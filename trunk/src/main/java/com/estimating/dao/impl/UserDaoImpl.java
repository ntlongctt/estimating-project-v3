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
public class UserDaoImpl implements IUserDao{

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<User> getListUser() {
		TypedQuery<User> query = em.createQuery(
				"Select p From User p", User.class);
		return query.getResultList();
	}

	@Transactional
	public User getUserByUsername(String username) {
		String strQuery= "SELECT p From User p WHERE p.tenUser = :userName";
		System.out.println("User name is: " + username );
	    TypedQuery<User> query = em.createQuery(strQuery, User.class);
	    query.setParameter("userName", username);
	    User user = query.getSingleResult();
		return user;
	}
	
}
