 	package com.estimating.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.estimating.beans.ShareProjectBean;
import com.estimating.dao.IProjectDao;
import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;
import com.estimating.domain.ShareProject;
import com.estimating.domain.User;

@Repository
public class ProjectDaoImpl implements IProjectDao {

	@PersistenceContext
	private EntityManager em;
	private static final Logger logger = Logger.getLogger(ProjectDaoImpl.class);

	/**
	 * @author Long Nguyen
	 * @return list project
	 */
	@Override
	public List<Project> getListProjectNotEstimated(String username) {
		TypedQuery<Project> query = em.createQuery("Select p From Project p Where p.user.username = :username and p.UCP_Estimated = 0",
				Project.class);
		query.setParameter("username", username);
		return query.getResultList();
	}

	@Override
	public List<Project> getListProject(String username) {
		TypedQuery<Project> query = em.createQuery("Select p From Project p Where p.user.username = :username ",
				Project.class);
		query.setParameter("username", username);
		return query.getResultList();
	}
	
	@Override
	@Transactional
	public boolean addProject(Project project) {
		boolean check = false;
		try {
			em.persist(project);
			check = true;
		} catch (Exception e) {
			check = false;
		}
		return check;
	}

	@Override
	public List<ProjectType> getListProjectType() {
		TypedQuery<ProjectType> query = em.createQuery(
				"Select p From ProjectType p", ProjectType.class);
		return query.getResultList();
	}

	@Override
	@Transactional
	public Project findProjectById(int id) {
		return em.find(Project.class, id);
	}

	@Override
	public List<Project> getListProjectFPEstiamted(String username) {
		TypedQuery<Project> query = em.createQuery("Select p From Project p Where p.FP_Estiamted=0 and p.user.username = :username",Project.class);
		query.setParameter("username", username);
		return query.getResultList();
	}

	@Transactional
	public boolean checkExistFpEstimating(int projectID) {
		Project project = em.find(Project.class, projectID);
		logger.info("FP_Estiamted: " + project.getFP_Estiamted());
		if (project.getFP_Estiamted() == 0)
			return true;
		return false;
	}

	@Override
	@Transactional
	public boolean updateExistFpEstimating(int projectID) {
		boolean check = false;
		try {
			Project project = em.find(Project.class, projectID);
			project.setFP_Estiamted(Byte.valueOf("1"));
			check = true;
		} catch (Exception ex) {
			check = false;
		}
		return check;
	}

	@Override
	public List<Project> getListProjectUCEstimated(String username) {
		TypedQuery<Project> query = em.createQuery("Select p From Project p Where p.UCP_Estimated=0 and p.user.username = :username",
				Project.class);
		query.setParameter("username", username);
		return query.getResultList();
	}

	@Transactional
	public boolean checkExistUcEstimating(int projectID) {
		Project project = em.find(Project.class, projectID);
		logger.info("id: " + projectID);
		if(project.getUCP_Estimated() == 0)
			return true;
		return false;
	}

	@Transactional
	public boolean updateExistUcEstimating(int projectID) {
		boolean check = false;
		try {
			Project project = em.find(Project.class, projectID);
			project.setUCP_Estimated(Byte.valueOf("1"));
			check = true;
		} catch(Exception ex) {
			check = false;
		}
		return check;
	}

	@Override
	public List<Project> getListProjectByUserName(String username) {
		TypedQuery<Project> query = em.createQuery(
				"Select p From Project p where p.user.username = :username",
				Project.class);
		query.setParameter("username", username);
		return query.getResultList();
	}

	@Override
	public ProjectType findProjectTypeById(int typeID) {
		return em.find(ProjectType.class, typeID);
	}



	@Override
	@Transactional
	public boolean addProjectShare(ShareProjectBean shareproject) {
		
		boolean check = false;
		try {
			ShareProject share = new ShareProject();
			Project project = em.find(Project.class, shareproject.getMaProject());
			User own = em.find(User.class, shareproject.getOwn_user());
			User user = em.find(User.class, shareproject.getShare_user());
			share.setProject(project);
			share.setUser1(own);
			share.setUser2(user);
			em.persist(share);
			check = true;
		} catch (Exception e) {
			check = false;
		}
		return check;
	}

	@Override
	public List<ShareProject> getListShareProject(String username) {
		TypedQuery<ShareProject> query = em.createQuery(
				"Select p From ShareProject p where p.user1.username = :username",
				ShareProject.class);
		query.setParameter("username", username);
		return query.getResultList();
	}

	@Transactional
	public boolean discardProject(int[] listId) {
		boolean check = false;
		try {
			for(int i = 0; i< listId.length; i++) {
				ShareProject share = em.find(ShareProject.class, listId[i]);
				em.remove(share);
			}
			check = true;
		} catch (Exception e) {
			check = false;
		}
		return check;
	}

	@Transactional
	public List<Project> findListProjectBySearchUcp(Set<Integer> listId) {
		List<Project> result = new ArrayList<Project>();
		Project project;
		for (Integer id : listId) {
			project = em.find(Project.class, id);
			if(project.getUser().getUserType().getMaUserType() == 1)
				result.add(project);
		}
		return result;
	}

	@Override
	public List<ShareProject> getListProjectShareByOtherUser(String username) {
		TypedQuery<ShareProject> query = em.createQuery(
				"Select p From ShareProject p where p.user2.username = :username",
				ShareProject.class);
		query.setParameter("username", username);
		return query.getResultList();
	}

	@Transactional
	public List<Project> findListProjectBySearchUcpVip(Set<Integer> listId) {
		List<Project> result = new ArrayList<Project>();
		Project project;
		for (Integer id : listId) {
			project = em.find(Project.class, id);
			result.add(project);
		}
		return result;
	}
	
	@Transactional
	public List<Project> findListProjectBySearchFpRegular(Set<Integer> listId) {
		List<Project> result = new ArrayList<Project>();
		Project project;
		for (Integer id : listId) {
			project = em.find(Project.class, id);
			if(project.getUser().getUserType().getMaUserType() == 1)
				result.add(project);
		}
		return result;
	}
}
