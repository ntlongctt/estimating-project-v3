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

import com.estimating.service.IUserService;

@Controller
@SessionAttributes({ "user", "roleuser", "userFullname" })
public class AdminAccountController {

	@Autowired
	IUserService userService;

	private static final Logger logger = Logger
			.getLogger(AdminAccountController.class);

	@RequestMapping(value = "/MyAccount", method = RequestMethod.GET)
	public String getCurrentUser(Model model,
			@ModelAttribute("user") String username) {
		model.addAttribute("selectedUser",
				userService.getUserByUsername(username));
		return "admin/SelectedUser";
	}

	@RequestMapping(value = "/AdminList", method = RequestMethod.GET)
	public String getAdminList(Model model) {
		model.addAttribute("currentTabRole", "admin");
		model.addAttribute("userList", userService.getListUserByRole(1));
		return "admin/UserList";
	}

	@RequestMapping(value = "/MemberList", method = RequestMethod.GET)
	public String getMemberList(Model model) {
		model.addAttribute("currentTabRole", "user");
		model.addAttribute("userList", userService.getListUserByRole(2));
		return "admin/UserList";
	}

	@RequestMapping(value = "/selectedUser", method = RequestMethod.GET)
	public String getSelectedUser(Model model, @RequestParam String username) {
		model.addAttribute("selectedUser",
				userService.getUserByUsername(username));
		return "admin/SelectedUser";
	}

	@RequestMapping(value = "/reset-password-for-user", method = RequestMethod.GET)
	public String resetPassword(Model model, @RequestParam String username) {
		model.addAttribute("selectedUser",
				userService.getUserByUsername(username));
		return "admin/CurrentUserInfo";
	}
}
