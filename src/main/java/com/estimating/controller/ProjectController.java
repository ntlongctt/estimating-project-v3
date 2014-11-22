package com.estimating.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;
import com.estimating.domain.User;
import com.estimating.service.IFuntionpointService;
import com.estimating.service.IProjectService;
import com.estimating.service.IUserService;

@Controller
@SessionAttributes({ "user", "roleuser" })
public class ProjectController {
	@Autowired
	IProjectService projectService;
	@Autowired
	IUserService userService;
	@Autowired
	IFuntionpointService fpService;

	private static final Logger logger = Logger
			.getLogger(FuntionPointController.class);

	@RequestMapping(value = "/addProject", method = RequestMethod.POST)
	public String addProject(Model model,
			@RequestParam("txtProjectName") String name,
			@RequestParam("txtDescription") String description,
			@RequestParam("typeProject") int type,
			@ModelAttribute("user") String username) {

		logger.info("Add New Project");

		Project project = new Project();
		// Set user
		User user = new User();
		user = userService.getUserByUsername(username);
		project.setUser(user);

		project.setTenProject(name);
		project.setMoTa(description);

		// Set ProjectType
		ProjectType projectType = projectService.findProjectTypeById(type);
		project.setProjectType(projectType);
		if (!projectService.addProject(project))
			logger.info("\n\n Errorrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr");
		model.addAttribute("listProject", projectService.getListProject(username));
		return "user/function-point";
	}
}
