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
			int version = 0;
			logger.info("pojectID save: " + project.getMaProject());
			
			uc.setProject(project);
			uc.setNgay(new Date());
			
			// For create new Version
			if(ucBean.getUcpId() != 0) {
				String strQuery = "SELECT p From UcpEstiamting p WHERE p.project.maProject = :maProject ORDER BY p.version DESC";
				TypedQuery<UcpEstiamting> query = em.createQuery(strQuery, UcpEstiamting.class);
				query.setParameter("maProject", ucBean.getProjectID());
				List<UcpEstiamting> temp = query.getResultList();
				version = temp.get(0).getVersion() + 1;
			}
			uc.setVersion(version);
			logger.info("pojectID save Buoc 1 " + project.getMaProject());
			uc.setActor(maps.get(Constants.USECASE_POINT_WAS));
			uc.setUseCase(maps.get(Constants.USECASE_POINT_WUC));
			logger.info("pojectID save Buoc 2 " + project.getMaProject());
			uc.setTechnical_Factor(maps.get(Constants.USECASE_POINT_TECHNICAL_FACTOR));
			uc.setEnviriment_Factor(maps.get(Constants.USECASE_POINT_ENVIRIMENT_FACTOR));
			logger.info("pojectID save Buoc 3.1 " + project.getMaProject());
			uc.setTotal(Double.parseDouble(maps.get(Constants.USECASE_POINT_TOTAL)));
			uc.setWas(Double.parseDouble(maps.get(Constants.USECASE_WAS)));
			uc.setWus(Double.parseDouble(maps.get(Constants.USECASE_WUS)));
			uc.setTcf(Double.parseDouble(maps.get(Constants.USECASE_TCF)));
			uc.setEfc(Double.parseDouble(maps.get(Constants.USECASE_EFC)));
			uc.setCost(Double.parseDouble(maps.get(Constants.USECASE_COST)));
			uc.setHour(Double.parseDouble(maps.get(Constants.USECASE_TOTAL_HOUR)));
			em.persist(uc);
//			uc.set
			logger.info("Save thanh cong!:");
		}
		catch(Exception ex){
			result = false;
		}
		return result;
	}

	@Override
	@Transactional
	public boolean updateUseCasePoint(UseCasePointBean ucBean, boolean newVersion) {
		boolean result = false;
		try {
			String strQuery= "SELECT p From UcpEstiamting p WHERE p.maUCP_Es = :maUCP_Es";
			TypedQuery<UcpEstiamting> query = em.createQuery(strQuery, UcpEstiamting.class);
			query.setParameter("maUCP_Es", ucBean.getUcpId());
			UcpEstiamting uc = query.getSingleResult();
			HashMap<String, String> maps = ucPointUtils.mapValueUseCasePoint(ucBean);
			uc.setNgay(new Date());
			uc.setActor(maps.get(Constants.USECASE_POINT_WAS));
			uc.setUseCase(maps.get(Constants.USECASE_POINT_WUC));
			uc.setTechnical_Factor(maps.get(Constants.USECASE_POINT_TECHNICAL_FACTOR));
			uc.setEnviriment_Factor(maps.get(Constants.USECASE_POINT_ENVIRIMENT_FACTOR));
			uc.setTotal(Double.parseDouble(maps.get(Constants.USECASE_POINT_TOTAL)));
			if(newVersion)
				uc.setVersion(uc.getVersion() + 1);
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
		String strQuery= "SELECT p From UcpEstiamting p WHERE p.project.maProject = :maProject ORDER BY p.version DESC ";
		
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

	@Override
	public UcpEstiamting findUseCasePointByUCId(int id) {
		String strQuery= "SELECT p From UcpEstiamting p WHERE p.maUCP_Es = :id ";
	    TypedQuery<UcpEstiamting> query = em.createQuery(strQuery, UcpEstiamting.class);
	    query.setParameter("id", id);
		return query.getSingleResult();
	}
	
}
