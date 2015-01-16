package com.estimating.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.estimating.beans.FuntionPointBean;
import com.estimating.service.IFuntionpointService;
import com.estimating.service.IProjectService;
import com.estimating.service.IUserService;

@Controller
@SessionAttributes({ "user", "roleuser", "userFullname" })
public class FuntionPointController {

	@Autowired
	IProjectService projectService;

	@Autowired
	IUserService userService;

	@Autowired
	IFuntionpointService fpService;

	private static final Logger logger = Logger
			.getLogger(FuntionPointController.class);

	@RequestMapping(value = "/functionpoint", method = RequestMethod.GET)
	public String goFuntionPoint(Model model, @ModelAttribute("user")String username) {

		model.addAttribute("listProject",
				projectService.getListProjectFPEstiamted(username));
		model.addAttribute("listProjectType",
				projectService.getListProjectType());
		return "user/function-point";
	}

	@RequestMapping(value = "/addFpEstimating", method = RequestMethod.POST)
	public String addFpEstimating(Model model) {
		return "user/function-point";
	}

	@RequestMapping(value = "/calc-functionpoint", method = RequestMethod.POST)
	@ResponseBody
	public FuntionPointBean previewFuntionPoint(
			@RequestBody FuntionPointBean fpPointBean, Model model) {
		logger.info("previewFuntionPoint is called");
		fpPointBean.setTotalFP(fpService.calFuntionPoint(fpPointBean));
		fpPointBean.setCost(fpService.calCostFp(fpPointBean));
		return fpPointBean;
	}

	@RequestMapping(value = "/save-functionpoint", method = RequestMethod.POST)
	@ResponseBody
	public FuntionPointBean saveFuntionPoint(
			@RequestBody FuntionPointBean fpPointBean, Model model) {
		logger.info("saveFuntionPoint is called");
		if (!projectService.checkExistFpEstimating(fpPointBean.getProjectID())) {
			// Update fp
			logger.info("Project ID: " + fpPointBean.getProjectID());
			logger.info("Update FP!");
			fpPointBean.setVersion(0);
			fpService.updateFuntionPoint(fpPointBean,false);
		} else {
			// Add fp + Update FP_Estiamted in project
			logger.info("Add FP!");
			projectService.updateExistFpEstimating(fpPointBean.getProjectID());
			fpService.addFuntionPoint(fpPointBean);
		}

		fpPointBean.setTotalFP(fpService.calFuntionPoint(fpPointBean));
		fpPointBean.setCost(fpService.calCostFp(fpPointBean));

		return fpPointBean;
	}
	
	@RequestMapping (value = "/show-fpDetail/{valueSelected}", method = RequestMethod.GET)
	@ResponseBody
	public FuntionPointBean showUseCaseDetail(@PathVariable("valueSelected") int valueSelected, Model model){
		FuntionPointBean ucBean = new FuntionPointBean();
		ucBean = fpService.findFunctionPointByUCId(valueSelected);
		logger.info("Gia tri: " + valueSelected);
		return ucBean;
	}
	
	/*Create new FP version*/
	@RequestMapping(value ="/new-fpVersion", method = RequestMethod.POST)
	@ResponseBody
	public FuntionPointBean createNewFpVersion(
			@RequestBody FuntionPointBean fpBean, Model model){
		// Validate
		if(fpBean.getProjectID() == 0)
			model.addAttribute("message", "Please select version of project!");
		fpService.addFuntionPoint(fpBean);
		return fpBean;
	}
	//update version function point
	@RequestMapping(value ="/update-fpVersion", method = RequestMethod.POST)
	@ResponseBody
	public FuntionPointBean updateNewFpVersion(
			@RequestBody FuntionPointBean fpBean, Model model){
		fpService.updateFuntionPoint(fpBean, false);
		return fpBean;
	}
}
