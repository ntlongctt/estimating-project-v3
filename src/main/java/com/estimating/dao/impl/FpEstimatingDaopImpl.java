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

import com.estimating.beans.FuntionPointBean;
import com.estimating.controller.UseCasePointController;
import com.estimating.dao.IFpEstimatingDao;
import com.estimating.domain.FpEstimating;
import com.estimating.domain.Project;
import com.estimating.utils.Constants;
import com.estimating.utils.FuntionPointUtils;

@Repository
public class FpEstimatingDaopImpl implements IFpEstimatingDao {
	@PersistenceContext
	EntityManager em;
	FuntionPointUtils fpPointUtils = new FuntionPointUtils();
	private static final Logger logger = Logger.getLogger(UseCasePointController.class);
	/**
	 * Add new function point when create new project
	 */
	@Override
	@Transactional
	public boolean addFuntionPoint(FuntionPointBean fpBean) {
		boolean result = true;
		try {
			FpEstimating fp = new FpEstimating();
			int version = 0;
			HashMap<String, String> maps = fpPointUtils.mapValueFunctionPoint(fpBean);
			Project project = em.find(Project.class, fpBean.getProjectID());
			fp.setProject(project);
			fp.setNgay(new Date());
			// For create new Version
			if(fpBean.getFpID() != 0) {
				String strQuery = "SELECT p From FpEstimating p WHERE p.project.maProject = :maProject ORDER BY p.version DESC";
				TypedQuery<FpEstimating> query = em.createQuery(strQuery, FpEstimating.class);
				query.setParameter("maProject", fpBean.getProjectID());
				List<FpEstimating> temp = query.getResultList();
				version = temp.get(0).getVersion() + 1;
			}
			fp.setVersion(version);
			fp.setUser_Input(maps.get(Constants.FUNCTION_POINT_USER_INPUT));
			fp.setUser_Output(maps.get(Constants.FUNCTION_POINT_USER_OUTPUT));
			fp.setUser_Online_Query(maps.get(Constants.FUNCTION_POINT_USER_ONLINE_QUERY));
			fp.setLogical_File(maps.get(Constants.FUNCTION_POINT_LOGICAL_FILE));
			fp.setRelative_Factor(maps.get(Constants.FUNCTION_POINT_RELATIVE_FACTOR));
			fp.setExternal_Interface(maps.get(Constants.FUNCTION_POINT_EXTERNAL_INTERFACE));
			fp.setTotal(Double.parseDouble(maps.get(Constants.FUNCTION_POINT_TOTAL)));
			fp.setTotalUI(Double.parseDouble(maps.get(Constants.FUNCTION_POINT_TOTALUI)));
			fp.setTotalUO(Double.parseDouble(maps.get(Constants.FUNCTION_POINT_TOTALUO)));
			fp.setTotalUQ(Double.parseDouble(maps.get(Constants.FUNCTION_POINT_TOTALUQ)));
			fp.setTotalEIF(Double.parseDouble(maps.get(Constants.FUNCTION_POINT_TOTALEIF)));
			fp.setTotalILF(Double.parseDouble(maps.get(Constants.FUNCTION_POINT_TOTALILF)));
			fp.setTotalRCAF(Double.parseDouble(maps.get(Constants.FUNCTION_POINT_TOTALRACF)));
			fp.setCost(Double.parseDouble(maps.get(Constants.FUNCTION_POINT_COST)));
			fp.setTotalHour(Double.parseDouble(maps.get(Constants.FUNCTION_POINT_TOTALHOUR)));
			em.persist(fp);
		} catch (Exception ex) {
			result = false;
		}
		return result;
	}

	/**
	 * Update function point
	 */
	@Override
	@Transactional
	public boolean updateFuntionPoint(FuntionPointBean fpBean, boolean newVersion) {
		boolean result = false;
		try {
			String strQuery = "SELECT p From FpEstimating p WHERE p.project.maProject = :maProject AND p.version = 1";
			TypedQuery<FpEstimating> query = em.createQuery(strQuery, FpEstimating.class);
			query.setParameter("maProject", fpBean.getProjectID());
			FpEstimating fp = query.getSingleResult();
			HashMap<String, String> maps = fpPointUtils.mapValueFunctionPoint(fpBean);
			fp.setNgay(new Date());
			fp.setUser_Input(maps.get(Constants.FUNCTION_POINT_USER_INPUT));
			fp.setUser_Output(maps.get(Constants.FUNCTION_POINT_USER_OUTPUT));
			fp.setUser_Online_Query(maps.get(Constants.FUNCTION_POINT_USER_ONLINE_QUERY));
			fp.setLogical_File(maps.get(Constants.FUNCTION_POINT_LOGICAL_FILE));
			fp.setRelative_Factor(maps.get(Constants.FUNCTION_POINT_RELATIVE_FACTOR));
			fp.setExternal_Interface(maps.get(Constants.FUNCTION_POINT_EXTERNAL_INTERFACE));
		} catch (Exception ex) {
			result = false;
		}
		return result;
	}
//	SELECT e FROM Entity e
//	WHERE e.timestamp = (SELECT MAX(ee.timestamp) FROM Entity ee WHERE ee.entityId = e.entityId)
	@Override
	public double maxCost(){
		TypedQuery<FpEstimating> query = em.createQuery("select  p from FpEstimating p where p.Cost = ( select max(q.Cost) from FpEstimating q)", FpEstimating.class);
		return query.getSingleResult().getCost();
	}
	
	@Override
	public List<FpEstimating> getListFpEstimated(int projectID) {
		String strQuery= "SELECT p From FpEstimating p WHERE p.project.maProject = :maProject ";
		logger.info("strQuery");
	    TypedQuery<FpEstimating> query = em.createQuery(strQuery, FpEstimating.class);
	    query.setParameter("maProject", projectID);
		return query.getResultList();
	}

	@Override
	public List<FpEstimating> getAllListFp() {
		TypedQuery<FpEstimating> query = em.createQuery("Select p From FpEstimating p", FpEstimating.class);
		return query.getResultList();
	}

	@Override
	public FpEstimating findFunctionPointByUCId(int id) {
		String strQuery= "SELECT p From FpEstimating p WHERE p.maFP_Es = :id ";
	    TypedQuery<FpEstimating> query = em.createQuery(strQuery, FpEstimating.class);
	    query.setParameter("id", id);
		return query.getSingleResult();
	}

}
