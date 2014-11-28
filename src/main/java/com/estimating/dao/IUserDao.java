package com.estimating.dao;

import java.util.List;

import com.estimating.domain.User;

public interface IUserDao {
	public List<User> getListUser();
	public User getUserByUsername(String username);
	public List<User> getListUserByRole(int roleId);
}
