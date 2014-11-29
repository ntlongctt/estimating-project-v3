package com.estimating.service;

import org.springframework.dao.DataAccessException;

public interface IValidatorService {
	public String encodePassword(String rawPass)
			throws DataAccessException;

	public boolean isPasswordValid(String encPass, String rawPass, Object salt)
			throws DataAccessException;

	public String checkUpdatePassword(String userName, String oldPass,
			String newPass, String confPass);
}
