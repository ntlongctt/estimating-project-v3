package com.estimating.dao.impl;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.estimating.beans.UseCasePointBean;
import com.estimating.dao.IUseCasePointDao;
import com.estimating.domain.Project;
import com.estimating.domain.UcpEstiamting;
import com.estimating.utils.Constants;
import com.estimating.utils.UseCasePointUtils;

@Repository
public class UcEstimatingDaoImpl implements IUseCasePointDao {
	@PersistenceContext
	EntityManager em;
	UseCasePointUtils ucPointUtils = new UseCasePointUtils();
	private static final Logger logger = Logger.getLogger(UcEstimatingDaoImpl.class);
	/**
	 * Add new Use case point when create new project
	 */
	@Override
	@Transactional
	public boolean addUseCasePoint(UseCasePointBean ucBean) {
		boolean result = true;
		try{
			UcpEstiamting uc = new UcpEstiamting();
			HashMap<String, String> maps = ucPointUtils.mapValueUseCasePoint(ucBean);
			Project project = em.find(Project.class, ucBean.getProjectID());

			logger.info("pojectID save: " + project.getMaProject());
			
			uc.setProject(project);
			uc.setNgay(new Date());
			uc.setVersion(1);
			logger.info("pojectID save Buoc 1 " + project.getMaProject());
			uc.setActor(maps.get(Constants.USECASE_POINT_WAS));
			uc.setUseCase(maps.get(Constants.USECASE_POINT_WUC));
			logger.info("pojectID save Buoc 2 " + project.getMaProject());
			uc.setTechnical_Factor(maps.get(Constants.USECASE_POINT_TECHNICAL_FACTOR));
			uc.setEnviriment_Factor(maps.get(Constants.USECASE_POINT_ENVIRIMENT_FACTOR));
			logger.info("pojectID save Buoc 3.1 " + project.getMaProject());
			uc.setTotal(Double.parseDouble(maps.get(Constants.USECASE_POINT_TOTAL)));
			logger.info("pojectID save Buoc 3 " + project.getMaProject());
			logger.info("Save thanh cong1:");
			em.persist(uc);
			logger.info("Save thanh cong!:");
		}
		catch(Exception ex){
			result = false;
		}
		return result;
	}

	@Override
	@Transactional
	public boolean updateUseCasePoint(UseCasePointBean ucBean) {
		boolean result = false;
		try {
		String strQuery= "SELECT p From UcpEstiamting p WHERE p.project.maProject = :maProject AND p.version = 1";
		TypedQuery<UcpEstiamting> query = em.createQuery(strQuery, UcpEstiamting.class);
		query.setParameter("maProject", ucBean.getProjectID());
		UcpEstiamting uc = query.getSingleResult();
		HashMap<String, String> maps = ucPointUtils.mapValueUseCasePoint(ucBean);
		uc.setNgay(new Date());
		uc.setActor(maps.get(Constants.USECASE_POINT_WAS));
		uc.setUseCase(maps.get(Constants.USECASE_POINT_WUC));
		uc.setTechnical_Factor(maps.get(Constants.USECASE_POINT_TECHNICAL_FACTOR));
		uc.setEnviriment_Factor(maps.get(Constants.USECASE_POINT_ENVIRIMENT_FACTOR));
		uc.setTotal(Double.parseDouble(maps.get(Constants.USECASE_POINT_TOTAL)));
		logger.info("Vao update DAO");
		}
		catch(Exception ex){
			logger.warn(ex.toString());
			result = false;
		}
		return result;	
	}

	@Override
	public List<UcpEstiamting> getAllListUc() {
		TypedQuery<UcpEstiamting> query = em.createQuery("Select p From UcpEstiamting p",
				UcpEstiamting.class);
		return query.getResultList();
	}
	
	@Override
	public List<UcpEstiamting> getListUcpEstimated(int projectID) {
		String strQuery= "SELECT p From UcpEstiamting p WHERE p.project.maProject = :maProject ";
		
	    TypedQuery<UcpEstiamting> query = em.createQuery(strQuery, UcpEstiamting.class);
	    query.setParameter("maProject", projectID);
		return query.getResultList();
	}

	@Override
	public List<UcpEstiamting> findListUcpByUsername(String username) {
		String strQuery= "SELECT p From UcpEstiamting p WHERE p.project.user.username = :username ";
	    TypedQuery<UcpEstiamting> query = em.createQuery(strQuery, UcpEstiamting.class);
	    query.setParameter("username", username);
		return query.getResultList();
	}
	
}
