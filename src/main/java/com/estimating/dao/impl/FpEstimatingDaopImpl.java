package com.estimating.dao.impl;
						
import java.util.Date;
import java.util.HashMap;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.estimating.beans.FuntionPointBean;
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

	/**
	 * Add new function point when create new project
	 */
	@Transactional
	public boolean addFuntionPoint(FuntionPointBean fpBean) {
		boolean result = true;
		try {
			FpEstimating fp = new FpEstimating();
			HashMap<String, String> maps = fpPointUtils.mapValueFunctionPoint(fpBean);
			Project project = em.find(Project.class, fpBean.getProjectID());
			fp.setProject(project);
			fp.setNgay(new Date());
			fp.setVersion(1);
			fp.setUser_Input(maps.get(Constants.FUNCTION_POINT_USER_INPUT));
			fp.setUser_Output(maps.get(Constants.FUNCTION_POINT_USER_OUTPUT));
			fp.setUser_Online_Query(maps.get(Constants.FUNCTION_POINT_USER_ONLINE_QUERY));
			fp.setLogical_File(maps.get(Constants.FUNCTION_POINT_LOGICAL_FILE));
			fp.setRelative_Factor(maps.get(Constants.FUNCTION_POINT_RELATIVE_FACTOR));
			fp.setExternal_Interface(maps.get(Constants.FUNCTION_POINT_EXTERNAL_INTERFACE));
			em.persist(fp);
		}
		catch(Exception ex) {
			result = false;
		}
		return result;
	}

	/**
	 * Update function point
	 */
	@Transactional
	public boolean updateFuntionPoint(FuntionPointBean fpBean) {
		boolean result = false;
		try {
			String strQuery= "SELECT p From FpEstimating p WHERE p.project.maProject = :maProject AND p.version = 1";
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
		}
		catch(Exception ex) {
			result = false;
		}
		return result;
	}

}