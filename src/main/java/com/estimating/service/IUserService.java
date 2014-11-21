package com.estimating.service;

import java.util.List;

import com.estimating.domain.User;

public interface IUserService {
	public List<User> getListUser();

	public User getUserByUsername(String username);

	public List<User> getListUserByRole(int roleId);
}
