package com.estimating.dao.impl;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.estimating.beans.UseCasePointBean;
import com.estimating.dao.IUseCasePointDao;
import com.estimating.domain.FpEstimating;
import com.estimating.domain.Project;
import com.estimating.domain.UcpEstiamting;
import com.estimating.utils.Constants;
import com.estimating.utils.UseCasePointUtils;
import com.itextpdf.text.pdf.PdfStructTreeController.returnType;

@Repository
public class UcEstimatingDaoImpl implements IUseCasePointDao {
	@PersistenceContext
	EntityManager em;
	UseCasePointUtils ucPointUtils = new UseCasePointUtils();
	/**
	 * Add new Use case point when create new project
	 */
	@Transactional
	public boolean addUseCasePoint(UseCasePointBean ucBean) {
		boolean result = true;
		try{
			UcpEstiamting uc = new UcpEstiamting();
			HashMap<String, String> maps = ucPointUtils.mapValueUseCasePoint(ucBean);
			Project project = em.find(Project.class, ucBean.getProjectID());
			uc.setProject(project);
			uc.setNgay(new Date());
			uc.setVersion(1);
			uc.setActor(maps.get(Constants.USECASE_POINT_WAS));
			uc.setUseCase(maps.get(Constants.USECASE_POINT_WUC));
			uc.setTechnical_Factor(maps.get(Constants.USECASE_POINT_TECHNICAL_FACTOR));
			uc.setEnviriment_Factor(maps.get(Constants.USECASE_POINT_ENVIRIMENT_FACTOR));
			em.persist(uc);
		}
		catch(Exception ex){
			result = false;
		}
		return result;
	}

	@Override
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
		}
		catch(Exception ex){
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
	public List<UcpEstiamting> getListUcpEstimated(String projectID) {
		String strQuery= "SELECT p From UcpEstiamting p WHERE p.project.maProject = :maProject ";
		
	    TypedQuery<UcpEstiamting> query = em.createQuery(strQuery, UcpEstiamting.class);
	    query.setParameter("maProject", projectID);
		return query.getResultList();
	}
	
}
