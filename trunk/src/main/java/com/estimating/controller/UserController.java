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
import com.itextpdf.text.pdf.PdfStructTreeController.returnType;

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

	
	@RequestMapping (value = "/check-username/{username}/{maProject}", method = RequestMethod.GET)
	@ResponseBody
	public UserBean showUseCaseDetail(@PathVariable("username") String username, @PathVariable("maProject") String maProject, 
			Model model, @ModelAttribute("user") String currentUser){
		if(username.equals(currentUser)){
			
			String resultcheck = "TrungUser";
			UserBean result = new UserBean();
			result.setMsgError(resultcheck);
			return result;
		}
		else{
			String resultcheck = userService.checkAndGetUserByUsername(username, currentUser, maProject);
			UserBean result = new UserBean();
			result.setMsgError(resultcheck);
			return result;
		}
		
	}

	
	
	@RequestMapping (value = "/check-upgrade/{key}", method = RequestMethod.GET)
	@ResponseBody
	public boolean upgrade(@PathVariable("key") String key, @ModelAttribute("user") String username, 
			Model model){
		return userService.upgradeUser(username, key);
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
