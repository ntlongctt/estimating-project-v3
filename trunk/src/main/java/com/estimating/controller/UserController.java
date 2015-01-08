package com.estimating.controller;

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

import com.estimating.beans.UseCasePointBean;
import com.estimating.beans.UserBean;
import com.estimating.service.IUserService;

@Controller
@SessionAttributes({ "user", "roleuser", "userFullname" })
public class UserController {
	@Autowired
	IUserService userService;
	
	@RequestMapping(value = "/registeruser", method = RequestMethod.POST, headers="Accept=application/json")
	@ResponseBody
	public UserBean register(@RequestBody UserBean userBean, Model model){
		userService.addUser(userBean);
		return userBean;
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.POST, headers="Accept=application/json")
	@ResponseBody
	public UserBean editProfile(@RequestBody UserBean userBean, Model model){
		userService.editUser(userBean);
		return userBean;
	}
/*	
	@RequestMapping(value = "/check-username", method = RequestMethod.GET, headers="Accept=application/json" )
	@ResponseBody
	public String checkusername(@RequestBody String username, Model model){
		String name = userService.checkAndGetUserByUsername(username);
		return name;
	}*/
	
	@RequestMapping (value = "/check-username/{username}", method = RequestMethod.GET)
	@ResponseBody
	public UserBean showUseCaseDetail(@PathVariable("username") String username, Model model){
		String name = userService.checkAndGetUserByUsername(username);
		UserBean result = new UserBean();
		result.setUsername(name);
		return result;
	}
	
	@RequestMapping(value = "/user-profile", method = RequestMethod.GET)
	public String goUserProfile(@ModelAttribute("user") String username) {
		return "user/use-profile";
	}
	
	@RequestMapping(value = "/user-profilejson", method = RequestMethod.GET)
	@ResponseBody
	public UserBean getProfile(@ModelAttribute("user") String username) {
		return userService.getProfilebyUser(username);
	}
}