package com.estimating.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.apache.tomcat.dbcp.pool2.UsageTracking;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.estimating.beans.UserBean;
import com.estimating.dao.IUserDao;
import com.estimating.domain.Role;
import com.estimating.domain.ShareProject;
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
	public String checkduplicateOwner(){
		String strQuery = "SELECT p From share_project p WHERE p.own_user = :userName";
		TypedQuery<ShareProject> query = em.createQuery(strQuery, ShareProject.class);
		//query.setParameter("userName", username);
		String user = query.getSingleResult().getUser1().getUsername();
		if(user == "")
			user = "khongtontaiuser";
		return user;
	}
	@Override
	@Transactional
	public boolean upgradeUser(String username, String key){
		User user = new User();
		UserType type = new UserType();
		String strQuery = "SELECT p From User p WHERE p.username = :userName";
		TypedQuery<User> query = em.createQuery(strQuery, User.class);
		query.setParameter("userName", username);
		user = query.getSingleResult();
		String typeQuery = "SELECT p From UserType p WHERE p.maUserType = 2";
		TypedQuery<UserType> queryType = em.createQuery(typeQuery, UserType.class);
		type = queryType.getSingleResult();
		if(key.equals("nangcapvip")){
			user.setUserType(type);
			return true;
		}
		return false;
	}

	@Override
	public String checkAndGetUserByUsername(String username, String currentUser, String maProject) {
		/*String strQuery = "SELECT p From User p WHERE p.username = :userName";
		String strQuery2 = "SELECT q.project From ShareProject q WHERE q.user2 = "+username+" ";
		TypedQuery<ShareProject> query2 = em.createQuery(strQuery2, ShareProject.class);
		TypedQuery<User> query = em.createQuery(strQuery, User.class);
		query.setParameter("userName", username);
		//query2.setParameter("project", maProject);
		List<ShareProject> lst = query2.getResultList();
		logger.info("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:"+lst.get(0).getProject());
		String user = query.getSingleResult().getUsername();
		
		*/
		
		TypedQuery<Integer> queryListProjecId = em.createQuery("SELECT c.project.maProject FROM ShareProject AS c WHERE c.user2.username = :currentUser", Integer.class);
		queryListProjecId.setParameter("currentUser", username);
		List<Integer> results = queryListProjecId.getResultList();
		String result = "";
		if(results.contains(Integer.parseInt(maProject)))
			result = "Shared";
		return result;
	}
	
	
	
	

}