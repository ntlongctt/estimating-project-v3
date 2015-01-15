package com.estimating.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.estimating.beans.ShareProjectBean;
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
	/**
	 * Start Share Project
	 */
	
	@RequestMapping(value = "/share-project", method = RequestMethod.GET)
	public String goShareProject(Model model) {
		return "user/share-project";
	}
	
	
	/*@RequestMapping(value ="/add-share-project", method = RequestMethod.POST, headers="Accept=application/json")
	@ResponseBody 
	public List<ShareProjectBean> projectShare(@RequestBody ShareProjectBean shareBean, @ModelAttribute("user") String username ){
		List<ShareProjectBean> result = new ArrayList<ShareProjectBean>();
		shareBean.setOwn_user(username);
		if(projectService.addProjectShare(shareBean)) {
			result = projectService.getListShareProject(username);
		}
		
		return result;
	}*/
	
	@RequestMapping(value ="/add-share-project", method = RequestMethod.POST, headers="Accept=application/json")
	@ResponseBody 
	public List<ShareProjectBean> projectShare(@RequestBody ShareProjectBean litShareBean, @ModelAttribute("user")String username ){
		List<ShareProjectBean> result = new ArrayList<ShareProjectBean>();
		litShareBean.setOwn_user(username);
		if(projectService.addProjectShare(litShareBean)) {
			result = projectService.getListShareProject(username);
		}
		
		return result;
	}
	
	@RequestMapping(value ="/list-share-project", method = RequestMethod.GET)
	@ResponseBody 
	public List<ShareProjectBean> getListProjectShare(@ModelAttribute("user") String username ){
		List<ShareProjectBean> result = new ArrayList<ShareProjectBean>();
		result = projectService.getListShareProject(username);
		return result;
	}
	
	// Discard share: Remove record in database
	@RequestMapping(value ="/discard-share/{paramListId}", method = RequestMethod.POST)
	public String discardShare(@PathVariable("paramListId") int [] param){
		if(param.length > 0) {
			projectService.discardProject(param);
		}
		return "user/share-project";
	}
	
	// Get list project by other users
	@RequestMapping(value ="/getListProjectByOtherUser", method = RequestMethod.GET)
	@ResponseBody 
	public List<ShareProjectBean> getListProjectShareByOtherUser(@ModelAttribute("user") String username ){
		List<ShareProjectBean> result = new ArrayList<ShareProjectBean>();
		result = projectService.getListProjectShareByOtherUser(username);
		return result;
	}
	
	/**
	 * 
	 * End Share Project
	 */
}
