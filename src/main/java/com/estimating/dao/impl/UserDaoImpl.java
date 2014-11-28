package com.estimating.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.estimating.dao.IUserDao;
import com.estimating.domain.User;

@Repository
public class UserDaoImpl implements IUserDao {

	@PersistenceContext
	private EntityManager em;

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
}
