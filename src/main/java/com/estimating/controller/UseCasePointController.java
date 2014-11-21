package com.estimating.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.estimating.beans.UseCasePointBean;
import com.estimating.service.IProjectService;
import com.estimating.service.IUseCasePointService;
import com.estimating.service.IUserService;

@Controller
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
	public String goUserCasePoint(Model model) {
		UseCasePointBean uBean = new UseCasePointBean();
		model.addAttribute("listProject", projectService.getListProject());
		model.addAttribute("listProjectType",
				projectService.getListProjectType());
		model.addAttribute("diem", ucpService.calTotalUseCasePoint(uBean));
		return "user/usecase-point";
	}

	@RequestMapping(value = "/ucpValue", method = RequestMethod.POST)
	@ResponseBody
	public UseCasePointBean ucpBean(
			@RequestBody UseCasePointBean useCasePointBean, Model model) {
		UseCasePointBean result = ucpService
				.calTotalUseCasePoint(useCasePointBean);
		// model.addAttribute("ucpPoint",
		// ucpService.calTotalUseCasePoint(useCasePointBean));
		return result;
	}

	@RequestMapping(value = "/calc-usecasepoint", method = RequestMethod.POST)
	@ResponseBody
	public UseCasePointBean previewUseCasePoint(
			@RequestBody UseCasePointBean useCasePointBean, Model model) {
		logger.info("Preview UseCasePoint");
		UseCasePointBean result = ucpService.calTotalUseCasePoint(useCasePointBean);
		return result;
	}

}
