package com.estimating.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.estimating.beans.FuntionPointBean;
import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;
import com.estimating.domain.User;
import com.estimating.service.IFuntionpointService;
import com.estimating.service.IProjectService;
import com.estimating.service.IUserService;
import com.estimating.service.SaveFPServiceImpl;

@Controller
public class FuntionPointController {

	@Autowired
	IProjectService projectService;

	@Autowired
	IUserService userService;

	@Autowired
	IFuntionpointService fpService;

	@Autowired
	SaveFPServiceImpl saveFPSI;

	private static final Logger logger = Logger
			.getLogger(FuntionPointController.class);

	@RequestMapping(value = "/functionpoint", method = RequestMethod.GET)
	public String goFuntionPoint(Model model) {

		// System.out
		// .println("Project: " + projectService.getListProject().get(0));

		model.addAttribute("listProject",
				projectService.getListProjectFPEstiamted());
		model.addAttribute("listProjectType",
				projectService.getListProjectType());
		return "user/function-point";
	}

	@RequestMapping(value = "/addProject", method = RequestMethod.POST)
	public String addProject(Model model,
			@RequestParam("txtProjectName") String name,
			@RequestParam("txtDescription") String description,
			@RequestParam("typeProject") int type) {

		logger.info("Add New Project");

		Project project = new Project();
		// Set user
		User user = new User();
		user = userService.getListUser().get(0);
		project.setUser(user);

		project.setTenProject(name);
		project.setMoTa(description);

		// Set ProjectType
		ProjectType projectType = projectService.findProjectById(type);
		project.setProjectType(projectType);
		if (!projectService.addProject(project))
			logger.info("\n\n Errorrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr");
		model.addAttribute("listProject", projectService.getListProject());
		return "user/function-point";
	}

	@RequestMapping(value = "/addFpEstimating", method = RequestMethod.POST)
	public String addFpEstimating(Model model) {

		return "user/function-point";
	}

	@RequestMapping(value = "/calc-functionpoint", method = RequestMethod.POST)
	@ResponseBody
	public String previewFuntionPoint(
			@RequestBody FuntionPointBean fpPointBean, Model model) {

		logger.info("vaoooooooooooooooooooooooooooooooooooo");

		// User input
		double uiSimple = fpPointBean.getUiSimple();
		double uiAverage = fpPointBean.getUiAverage();
		double uiComplex = fpPointBean.getUiComplex();

		// User output
		double uoSimple = fpPointBean.getUoSimple();
		double uoAverage = fpPointBean.getUoAverage();
		double uoComplex = fpPointBean.getUoComplex();

		// User online query
		double uqSimple = fpPointBean.getUqSimple();
		double uqAverage = fpPointBean.getUqAverage();
		double uqComplex = fpPointBean.getUqComplex();

		// Internal logical file
		double ilfSimple = fpPointBean.getIlfSimple();
		double ilfAverage = fpPointBean.getIlfAverage();
		double ilfComplex = fpPointBean.getIlfComplex();

		// External interface file
		double eifSimple = fpPointBean.getEifSimple();
		double eifAverage = fpPointBean.getEifAverage();
		double eifComplex = fpPointBean.getEifComplex();

		// Relative Factor
		double rf1 = fpPointBean.getrF1();
		double rf2 = fpPointBean.getrF2();
		double rf3 = fpPointBean.getrF3();
		double rf4 = fpPointBean.getrF4();
		double rf5 = fpPointBean.getrF5();
		double rf6 = fpPointBean.getrF6();
		double rf7 = fpPointBean.getrF7();
		double rf8 = fpPointBean.getrF8();
		double rf9 = fpPointBean.getrF9();
		double rf10 = fpPointBean.getrF10();
		double rf11 = fpPointBean.getrF11();
		double rf12 = fpPointBean.getrF12();
		double rf13 = fpPointBean.getrF13();
		double rf14 = fpPointBean.getrF14();

		double totalFP = fpService.calFuntionPoint(fpPointBean);

		return "user/function-point";
	}
}
