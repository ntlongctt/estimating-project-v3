package com.estimating.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.estimating.beans.UserBean;
import com.estimating.dao.IUserDao;
import com.estimating.domain.User;
import com.estimating.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	IUserDao userDao;

	@Override
	public List<User> getListUser() {
		return userDao.getListUser();
	}

	@Override
	public User getUserByUsername(String username) {
		return userDao.getUserByUsername(username);
	}

	@Override
	public List<User> getListUserByRole(int roleId) {
		return userDao.getListUserByRole(roleId);
	}

	@Override
	public boolean addUser(UserBean userbean) {
		return userDao.addUser(userbean);
	}
	@Override
	public boolean upgradeUser(String username, String key){
		return userDao.upgradeUser(username, key);
	}

	@Override
	public UserBean getProfilebyUser(String username) {
		User user = userDao.getUserByUsername(username);
		UserBean userBean = new UserBean();
		userBean.setUsername(user.getUsername());
		userBean.setFullname(user.getHoTen());
		userBean.setAddress(user.getDiaChi());
		userBean.setMail(user.getMail());
		userBean.setPhone(user.getPhone());
		return userBean;
	}

	@Override
	public boolean editUser(UserBean userbean) {
		return userDao.editUser(userbean);
	}



	@Override
	public String checkduplicateOwner() {
		return userDao.checkduplicateOwner();
	}

	@Override
	public String checkAndGetUserByUsername(String username, String currentUser, String maProject) {
		return userDao.checkAndGetUserByUsername(username,currentUser, maProject);
	}
}
