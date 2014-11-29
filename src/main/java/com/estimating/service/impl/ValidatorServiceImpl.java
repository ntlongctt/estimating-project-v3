package com.estimating.service.impl;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.estimating.dao.IUserDao;
import com.estimating.domain.User;
import com.estimating.service.IValidatorService;
import com.estimating.utils.Constants;


public class ValidatorServiceImpl implements IValidatorService {
	
	@Autowired
	IUserDao userDao;
	private static final Logger logger = Logger
			.getLogger(ValidatorServiceImpl.class);
	@Override
	public String encodePassword(String rawPass) throws DataAccessException {
		logger.info("Encoding password.");
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		return passwordEncoder.encode(rawPass);
	}

	@Override
	public boolean isPasswordValid(String encPass, String rawPass, Object salt)
			throws DataAccessException {
		logger.info("Validating password.");
		return BCrypt.checkpw(rawPass, encPass);
	}

	@Override
	public String checkUpdatePassword(String userName, String oldPass,
			String newPass, String confPass) {
		boolean check = true;
		String message = "";
		User user = userDao.getUserByUsername(userName);
		// BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		if (!BCrypt.checkpw(oldPass, user.getPassword())) {
			message += "<br>Old password is not correct</br>";
			check = false;
		} else {
			if (!confPass.equals(newPass)) {
				message += "<br>Confirm new password is not the same to new password</br>";
				check = false;
			}

			Pattern pattern = Pattern.compile(Constants.PASSWORD_PATTERN);
			Matcher matcher1 = pattern.matcher(newPass);
			Matcher matcher2 = pattern.matcher(confPass);
			if (!matcher1.matches() || !matcher2.matches()) {
				message += "<br>New password is not valid</br>";
				check = false;
			}
		}
		if (check)
			return null;
		else
			return message;
	}

}
