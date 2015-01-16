package com.estimating.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.estimating.beans.ProjectBean;
import com.estimating.domain.Project;
import com.estimating.domain.User;
import com.estimating.service.IFuntionpointService;
import com.estimating.service.IProjectService;
import com.estimating.service.IRouterService;
import com.estimating.service.IUseCasePointService;
import com.estimating.service.IUserService;

@Controller
@SessionAttributes({ "user", "roleuser", "userFullname" })
public class RouterController {

	@Autowired
	IRouterService routerService;

	@Autowired
	IUserService userService;

	@Autowired
	IProjectService projectService;

	@Autowired
	IFuntionpointService fpService;
	
	@Autowired
	IUseCasePointService ucpService;
	

	private Logger logger = Logger.getLogger(RouterController.class);

	@RequestMapping(value = "/contact-us", method = RequestMethod.GET)
	public String goContactUs(Model model) {
		return "user/contact-us";
	}

	@RequestMapping(value = "/edit-profile", method = RequestMethod.GET)
	public String goEditProfile(Model model) {
		return "user/edit-profile";
	}

	@RequestMapping(value = "/upgrade_user", method = RequestMethod.GET)
	public String goUpgradeUser(Model model) {
		return "user/upgrade_user";
	}

	@RequestMapping(value = "/function-point-document", method = RequestMethod.GET)
	public String goFP_Document(Model model) {
		return "user/fp-point-document";
	}

	@RequestMapping(value = "/function-step-decription", method = RequestMethod.GET)
	public String goFP_Step_Decription(Model model) {
		return "user/fp-step-decription";
	}


	@RequestMapping(value = "/manage-project", method = RequestMethod.GET)
	public String goHistory(Model model, @ModelAttribute("user") String username) {
		model.addAttribute("usertype", userService.getUserByUsername(username).getUserType().getMaUserType());
		return "user/manage-project";
	}

	@RequestMapping(value = "/search-engine", method = RequestMethod.GET)
	public String goSearchEngine(Model model) {
		return "user/search-engine";
	}

	@RequestMapping(value = "/ucp-document", method = RequestMethod.GET)
	public String goUCP_document(Model model) {
		return "user/UCP_document";
	}

	@RequestMapping(value = "/ucp-step-decription", method = RequestMethod.GET)
	public String goUCP_Decription(Model model) {
		return "user/ucp-step-decription";
	}
	
	@RequestMapping(value = "/ucp-detail", method = RequestMethod.GET)
	public String goUCP_Detail(Model model) {
		return "user/usecase-point-detail";
	}

	// end
	

	/**
	 * **************************************************************** 
	 * LOGIN
	 * ****************************************************************
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String doLogin() {
		logger.info("Go to Login!");
		return "login";
	}

	@RequestMapping(value = "/loginfail", method = RequestMethod.GET)
	public String doLoginFail() {
		logger.info("Go to LoginFail!");
		return "login";
	}

	@RequestMapping(value = "/denied", method = RequestMethod.GET)
	public String doDeny() {
		logger.info("Go to denied page!");
		return "404";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String doHome(HttpServletRequest request, Model model) {
		logger.info("Go Home!");
		String url = "";
		// Get username - add session user
		org.springframework.security.core.userdetails.User user = (org.springframework.security.core.userdetails.User) SecurityContextHolder
				.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();

		// Set sessopm user
		model.addAttribute("user", username);
		model.addAttribute("usertype", userService.getUserByUsername(username).getUserType().getMaUserType());
		// Get role - add session rolesuser
		Collection<GrantedAuthority> authorities = user.getAuthorities();

		// Redirect
		User usr = userService.getUserByUsername(username);
		model.addAttribute("userFullname", usr.getHoTen());
		if (authorities.toString().contains("ROLE_ADMIN")) {
			// Set sessopm roleuser
			model.addAttribute("roleuser", "admin");
			url = "admin/Blank";
		} else {
			model.addAttribute("roleuser", "user");
			model.addAttribute("countProject",projectService.getListProject(username).size());
			model.addAttribute("countFp",fpService.getAllListFp().size());
			model.addAttribute("countUc",ucpService.getAllListUc().size());
			model.addAttribute("totalVersion",fpService.getAllListFp().size()+ucpService.getAllListUc().size());
			model.addAttribute("maxfp", fpService.maxcost());
			model.addAttribute("maxuc", ucpService.maxcost());
			double percentFp = 0;
			double percentUc = 0;
			double a = fpService.getAllListFp().size();
			double b = ucpService.getAllListUc().size();
			if(a !=0 && b !=0) {
				percentFp = a/(a+b) * 100;
				percentUc = 100 - percentFp;
			}
			model.addAttribute("percentFp",percentFp);
			model.addAttribute("percentUc",percentUc);
			
		//	logger.info("percentFp:" + 100-percentFp);
			url = "user/home";
			
		}

		return url;
	}

	@RequestMapping(value = "/listprojectjson", method = RequestMethod.GET)
	@ResponseBody
	public List<ProjectBean> getListProjectJson(@ModelAttribute("user") String username) {
		List<ProjectBean> lstPrjBean = new ArrayList<ProjectBean>();
		ProjectBean projectBean;
		List<Project> lstProject = projectService.getListProject(username);
		for (Project project : lstProject) {
			projectBean = new ProjectBean();
			projectBean.setName(project.getTenProject());
			projectBean.setType(project.getProjectType().getTenLoaiProject());
			projectBean.setDescription(project.getMoTa());
			projectBean.setProjectID(project.getMaProject());
			lstPrjBean.add(projectBean);
		}
		return lstPrjBean;
	}

	
	@RequestMapping(value = "/{projectID}/viewDetailFpUc", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getListFpUc(@PathVariable("projectID") int projectID, Model model, 
			@ModelAttribute("user") String username) {
		Map<String, Object> maps = projectService.getListFpVsUcp(projectID); 
		maps.put("listFp", maps.get("listFp"));
		maps.put("listUc", maps.get("listUc"));
		maps.put("projectName", projectService.findProjectById(projectID).getTenProject());
		return maps;
	}
	// Register
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String goRegister() {
		logger.info("Register");
		return "register";
	}

}
