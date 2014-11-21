package com.estimating.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.estimating.dao.IProjectDao;
import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;

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
	public List<Project> getListProject() {
		TypedQuery<Project> query = em.createQuery("Select p From Project p",
				Project.class);
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
	public ProjectType findProjectById(int id) {
		return em.find(ProjectType.class, id);
	}

	@Override
	public List<Project> getListProjectFPEstiamted() {
		TypedQuery<Project> query = em
				.createQuery("Select p From Project p Where p.FP_Estiamted=0",
						Project.class);
		return query.getResultList();
	}

	@Override
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
	public List<Project> getListProjectByUserName(String username) {
		TypedQuery<Project> query = em.createQuery(
				"Select p From Project p where p.user.tenUser = :username",
				Project.class);
		query.setParameter("username", username);
		return query.getResultList();
	}

}
