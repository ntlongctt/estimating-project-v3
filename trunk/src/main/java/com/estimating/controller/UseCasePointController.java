package com.estimating.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.estimating.beans.ProjectBean;
import com.estimating.beans.SearchUseCasePointBean;
import com.estimating.beans.UseCasePointBean;
import com.estimating.domain.UcpEstiamting;
import com.estimating.service.IProjectService;
import com.estimating.service.IUseCasePointService;
import com.estimating.service.IUserService;

@Controller
@SessionAttributes({ "user", "roleuser", "userFullname" })
public class UseCasePointController {

	@Autowired
	IProjectService projectService;

	@Autowired
	IUserService userService;

	@Autowired
	IUseCasePointService ucpService;
	
	UcpEstiamting ucEs;

	private static final Logger logger = Logger
			.getLogger(UseCasePointController.class);

	@RequestMapping(value = "/usecasepoint", method = RequestMethod.GET)
	public String goUserCasePoint(@ModelAttribute("user") String username, Model model) {
		UseCasePointBean uBean = new UseCasePointBean();
		model.addAttribute("listProject", projectService.getListProjectUCEstimated(username));
		model.addAttribute("listProjectType",
				projectService.getListProjectType());
		model.addAttribute("diem", ucpService.calTotalUseCasePoint(uBean));
		return "user/usecase-point";
	}

	@RequestMapping(value = "/addUcEstimating", method = RequestMethod.POST)
	public String addUcEstimating(Model model){
		return "user/usecase-point";
	}
	


	@RequestMapping(value = "/calc-usecasepoint", method = RequestMethod.POST)
	@ResponseBody
	public UseCasePointBean previewUseCasePoint(
			@RequestBody UseCasePointBean useCasePointBean, Model model) {
		logger.info("Preview UseCasePoint");
		useCasePointBean.setTotalUCP(ucpService.calTotalUseCasePoint(useCasePointBean));
		useCasePointBean.setCost(ucpService.calCostUc(useCasePointBean));
		useCasePointBean.setWuc(ucpService.calWuc(useCasePointBean));
		useCasePointBean.setWas(ucpService.calWas(useCasePointBean));
		useCasePointBean.setTcf(ucpService.calTfc(useCasePointBean));
		useCasePointBean.setEfc(ucpService.calEcf(useCasePointBean));
		return useCasePointBean;
	}

	@RequestMapping (value = "/show-ucpDetail/{valueSelected}", method = RequestMethod.GET)
	@ResponseBody
	public UseCasePointBean showUseCaseDetail(@PathVariable("valueSelected") int valueSelected, Model model){
		UseCasePointBean ucBean = new UseCasePointBean();
		/*List<UcpEstiamting> list = new ArrayList<UcpEstiamting>();
		List<UseCasePointBean> listUcBean = new ArrayList<UseCasePointBean>();
		listUcBean = ucpService.parseUcpDaoToBean(list);
		
		ucBean.setSimple(Double.parseDouble(listUcBean.get(0).toString()));*/
		ucBean = ucpService.findUseCasePointByUCId(valueSelected);
		logger.info("Gia tri: " + valueSelected);
		return ucBean;
	}
	
	@RequestMapping(value = "/save-usecasepoint", method = RequestMethod.POST)
	@ResponseBody
	public UseCasePointBean saveUseCasePoint(
			@RequestBody UseCasePointBean ucPointBean, Model model) {
		
		if (!projectService.checkExistUcEstimating(ucPointBean.getProjectID())) {
			logger.info("Update UP!");
			ucPointBean.setVersion(0);
			ucpService.updateUseCasePoint(ucPointBean);
		} else {
			// Add fp + Update FP_Estiamted in project
			logger.info("Add UCP!");
			projectService.uodateExistUcEstimating(ucPointBean.getProjectID());
			ucpService.addUseCasePoint(ucPointBean);
		}

		ucPointBean.setTotalUCP(ucpService.calTotalUseCasePoint(ucPointBean));
		ucPointBean.setCost(ucpService.calCostUc(ucPointBean));

		return ucPointBean;
	}
	
	/**
	 * Step 1: Get list use case point of user
	 * Step 2: Calculate & Compare fields of list use case point with parameter get from controller
	 * Step 3: Get list id of use case point from Step 2
	 * Step 4: Get project from list use case point id
	 * @param searchUCPBean
	 * @param model
	 * @return list
	 */
	@RequestMapping(value = "/search-usecasepoint-vip", method = RequestMethod.POST)
	@ResponseBody
	public List<ProjectBean> searchUseCasePointVip(@ModelAttribute("user") String username,
			@RequestBody SearchUseCasePointBean searchUCPBean, Model model) {
		List<ProjectBean> result = new ArrayList<ProjectBean>();
		// Step 1
		List<UcpEstiamting> lstUcpEstiamting = ucpService.findListUcpByUsername(username);
		
		// Step 2 and Step 3
		Assert.notNull(lstUcpEstiamting, "List use case point null");
		Set<Integer> listId = ucpService.listUcpIdToSearchVip(lstUcpEstiamting, searchUCPBean);
		
		// Step 4
		result = projectService.findListProjectBySearchUcpVip(listId);
		
		return result;
	}
	
	@RequestMapping(value = "/search-usecasepoint", method = RequestMethod.POST)
	@ResponseBody
	public List<ProjectBean> searchUseCasePoint(@ModelAttribute("user") String username,
			@RequestBody SearchUseCasePointBean searchUCPBean, Model model) {
		List<ProjectBean> result = new ArrayList<ProjectBean>();
		// Step 1
		List<UcpEstiamting> lstUcpEstiamting = ucpService.findListUcpByUsername(username);
		
		// Step 2 and Step 3
		Assert.notNull(lstUcpEstiamting, "List use case point null");
		Set<Integer> listId = ucpService.listUcpIdToSearch(lstUcpEstiamting, searchUCPBean);
		
		// Step 4
		result = projectService.findListProjectBySearchFpRegular(listId);
		
		return result;
	}

}
