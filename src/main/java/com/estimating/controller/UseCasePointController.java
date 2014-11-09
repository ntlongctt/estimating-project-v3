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

import com.estimating.beans.JsonTest;
import com.estimating.beans.UseCasePointBean;
import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;
import com.estimating.domain.User;
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
		model.addAttribute("listProjectType", projectService.getListProjectType());
		model.addAttribute("diem", ucpService.calTotalUseCasePoint(uBean));
		return "user/usecase-point";
	}


	
	
	//@RequestMapping(value = "/addProject", method = RequestMethod.POST)

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
		return "user/usecase-point";
		
	}

	@RequestMapping(value ="/ucpValue", method = RequestMethod.POST)
	@ResponseBody
	public UseCasePointBean ucpBean(@RequestBody UseCasePointBean useCasePointBean, Model model){		
		UseCasePointBean result = ucpService.calTotalUseCasePoint(useCasePointBean);
		// model.addAttribute("ucpPoint", ucpService.calTotalUseCasePoint(useCasePointBean));
		return result;
		
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value = "/calc-usecasepoint", method = RequestMethod.POST)
	@ResponseBody
	public UseCasePointBean previewUseCasePoint(@RequestBody UseCasePointBean useCasePointBean, Model model) {

		logger.info("vaoooooooooooooooooooooooooooooooooooo LONGGGGGGGGGGG");

		// Use Case
		double easy = useCasePointBean.getEasy();
		double medium = useCasePointBean.getMedium();
		double difficult = useCasePointBean.getDifficult();

		// Actor
		double simple = useCasePointBean.getSimple();
		double average = useCasePointBean.getAverage();
		double complex = useCasePointBean.getComplex();

		// RCF
		double distributed = useCasePointBean.getDistributed();
		double performance = useCasePointBean.getPerformance();
		double endUserefficiency = useCasePointBean.getEndUserefficiency();
		double complexProcessing = useCasePointBean.getComplexProcessing();
		double reusableCode = useCasePointBean.getReusableCode();
		double easeofInstallation = useCasePointBean.getEaseofInstallation();
		double easeofUse = useCasePointBean.getEaseofUse();
		double portable = useCasePointBean.getPortable();
		double easeofChange = useCasePointBean.getEaseofChange();
		double concurrentUse = useCasePointBean.getConcurrentUse();
		double accessforThirdParties = useCasePointBean
				.getAccessforThirdParties();
		double specialSecurity = useCasePointBean.getSpecialSecurity();
		double trainingNeeds = useCasePointBean.getTrainingNeeds();

		// ECF
		double familiarwithDevelopmentProcess = useCasePointBean
				.getFamiliarwithDevelopmentProcess();
		double applicationExperience = useCasePointBean
				.getApplicationExperience();
		double objectOrientedExperience = useCasePointBean
				.getObjectOrientedExperience();
		double leadAnalystCapability = useCasePointBean
				.getLeadAnalystCapability();
		double motivation = useCasePointBean.getMotivation();
		double stabilityOfRequirement = useCasePointBean.getStableRequirements();
		double parttimeStaff = useCasePointBean.getParttimeStaff();
		double difficultProgramLanguague = useCasePointBean.getDifficulProgrammingLanguage();

		UseCasePointBean result = ucpService.calTotalUseCasePoint(useCasePointBean);
		
		
		return result;
	}

	@RequestMapping(value = "/jsontest", method = RequestMethod.POST)
	@ResponseBody
	public String goJsonTest(@RequestBody JsonTest jsonTest) {
		System.out.println("TESSSSSSSTTTTTTTTT: " + jsonTest.getJsonusername());
		return "user/usecase-point";
	}
	


}
