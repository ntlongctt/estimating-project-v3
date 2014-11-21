package com.estimating.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.estimating.beans.FuntionPointBean;
import com.estimating.service.IFuntionpointService;
import com.estimating.service.IProjectService;
import com.estimating.service.IUserService;

@Controller
public class FuntionPointController {

	@Autowired
	IProjectService projectService;

	@Autowired
	IUserService userService;

	@Autowired
	IFuntionpointService fpService;

	private static final Logger logger = Logger.getLogger(FuntionPointController.class);
	
	@RequestMapping(value = "/functionpoint", method = RequestMethod.GET)
	public String goFuntionPoint(Model model) {

		model.addAttribute("listProject",
				projectService.getListProjectFPEstiamted());
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
		fpPointBean.setCost(1000000);
		return fpPointBean;
	}
	
	@RequestMapping(value = "/save-functionpoint", method = RequestMethod.POST)
	@ResponseBody
	public FuntionPointBean saveFuntionPoint(
			@RequestBody FuntionPointBean fpPointBean, Model model) {
		logger.info("saveFuntionPoint is called");
		if(!projectService.checkExistFpEstimating(fpPointBean.getProjectID())) {
			// Update fp
			logger.info("Update FP!");
		} else {
			// Add fp  + Update FP_Estiamted in project
			logger.info("Add FP!");
		}
		
		fpPointBean.setTotalFP(fpService.calFuntionPoint(fpPointBean));
		fpPointBean.setCost(1000000);
		
		return fpPointBean;
	}
}
