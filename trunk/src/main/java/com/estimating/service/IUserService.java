package com.estimating.service;

import java.util.List;

import com.estimating.beans.UserBean;
import com.estimating.domain.User;

public interface IUserService {
	public List<User> getListUser();
	public User getUserByUsername(String username);
	public List<User> getListUserByRole(int roleId);
	
	public boolean addUser(UserBean userbean);
	
	public boolean editUser(UserBean userbean);
	
	public UserBean getProfilebyUser(String username);
}
