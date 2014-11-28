package com.estimating.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.estimating.beans.UseCasePointBean;
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
		return useCasePointBean;
	}
	
	@RequestMapping(value = "/save-usecasepoint", method = RequestMethod.POST)
	@ResponseBody
	public UseCasePointBean saveUseCasePoint(
			@RequestBody UseCasePointBean ucPointBean, Model model) {
		
		if (!projectService.checkExistUcEstimating(ucPointBean.getProjectID())) {
			logger.info("Update FP!");
			ucPointBean.setVersion(0);
			ucpService.updateUseCasePoint(ucPointBean);
		} else {
			// Add fp + Update FP_Estiamted in project
			logger.info("Add FP!");
			projectService.uodateExistUcEstimating(ucPointBean.getProjectID());
			ucpService.addUseCasePoint(ucPointBean);
		}

		ucPointBean.setTotalUCP(ucpService.calTotalUseCasePoint(ucPointBean));
		ucPointBean.setCost(ucpService.calCostUc(ucPointBean));

		return ucPointBean;
	}

}
