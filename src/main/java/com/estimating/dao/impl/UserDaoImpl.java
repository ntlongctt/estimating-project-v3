package com.estimating.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.estimating.beans.UserBean;
import com.estimating.dao.IUserDao;
import com.estimating.domain.Role;
import com.estimating.domain.User;
import com.estimating.domain.UserType;
import com.estimating.utils.PasswordUtils;

@Repository
public class UserDaoImpl implements IUserDao {
	private static final Logger logger = Logger.getLogger(UserDaoImpl.class);
	
	@PersistenceContext
	private EntityManager em;
	PasswordUtils passUtils = new PasswordUtils();

	@Override
	public List<User> getListUser() {
		TypedQuery<User> query = em.createQuery("Select p From User p",
				User.class);
		return query.getResultList();
	}

	@Override
	@Transactional
	public User getUserByUsername(String username) {
		String strQuery = "SELECT p From User p WHERE p.username = :userName";
		System.out.println("User name is: " + username);
		TypedQuery<User> query = em.createQuery(strQuery, User.class);
		query.setParameter("userName", username);
		System.out.println("User name is: " + username);
		User user = query.getSingleResult();
		return user;
	}

	@Override
	public List<User> getListUserByRole(int roleId) {
		String queryString = "Select u from User u where u.role.maRole = :roleId";
		TypedQuery<User> query = em.createQuery(queryString, User.class);
		query.setParameter("roleId", roleId);
		return query.getResultList();
	}

	@Override
	@Transactional
	public boolean addUser(UserBean userbean) {
		boolean result = true;
		try {
			User user = new User();
			UserType usertype = new UserType();
			usertype.setMaUserType(1);
			user.setUsername(userbean.getUsername());
			String pass = PasswordUtils.encodePassword(userbean.getPass());
			user.setPassword(pass);
			user.setHoTen(userbean.getFullname());
			user.setMail(userbean.getMail());
			user.setPhone(userbean.getPhone());
			user.setDiaChi(userbean.getAddress());
			user.setUserType(usertype);
			Role role = new Role();
			role.setMaRole(2);
			user.setRole(role);
			em.persist(user);
		} catch (Exception ex) {
			logger.warn(ex.toString());
			result = false;
		}
		return result;
	}

	@Override
	@Transactional
	public boolean editUser(UserBean userbean) {
		boolean result = true;
		try {
			User user = em.find(User.class, userbean.getUsername());
			user.setUsername(userbean.getUsername());
			user.setHoTen(userbean.getFullname());
			user.setMail(userbean.getMail());
			user.setPhone(userbean.getPhone());
			user.setDiaChi(userbean.getAddress());
		} catch (Exception ex) {
			logger.warn(ex.toString());
			result = false;
		}
		return result;
	}

	@Override
	@Transactional
	public boolean updatePassword(String username, String password) {
		boolean check = true;
		User user = em.find(User.class, username);
		try {
			user.setPassword(password);
		} catch (Exception e) {
			check = false;
		}
		return check;
	}

	@Override
	public String checkAndGetUserByUsername(String username) {
		String strQuery = "SELECT p From User p WHERE p.username = :userName";
		TypedQuery<User> query = em.createQuery(strQuery, User.class);
		query.setParameter("userName", username);
		String user = query.getSingleResult().getUsername();
		if(user == "")
			user = "long";
		return user;
	}

}