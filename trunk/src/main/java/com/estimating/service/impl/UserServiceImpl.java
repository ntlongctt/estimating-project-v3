package com.estimating.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
