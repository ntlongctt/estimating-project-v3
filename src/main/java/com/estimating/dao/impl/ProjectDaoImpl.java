package com.estimating.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.estimating.dao.IProjectDao;
import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;

@Repository
public class ProjectDaoImpl implements IProjectDao {

	@PersistenceContext
	private EntityManager em;

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
		TypedQuery<ProjectType> query = em.createQuery("Select p From ProjectType p",
				ProjectType.class);
		return query.getResultList();
	}

	@Transactional
	public ProjectType findProjectById(int id) {
		return em.find(ProjectType.class, id);
	}

	@Override
	public List<Project> getListProjectFPEstiamted() {
		TypedQuery<Project> query = em.createQuery("Select p From Project p Where p.FP_Estiamted=0",
				Project.class);
		return query.getResultList();
	}

}
