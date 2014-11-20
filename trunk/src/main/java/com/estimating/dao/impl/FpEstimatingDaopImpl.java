package com.estimating.dao.impl;

import java.util.HashMap;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
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
	
	@Override
	public boolean addFpEstimating(FpEstimating fpEstimating) {
		boolean check = false;
		try {
			em.persist(fpEstimating);
			check = true;
		} catch (Exception e) {
			check = false;
		}
		return check;
	}

	/**
	 * Add new function point when create new project
	 */
	@Transactional
	public boolean addFuntionPoint(FuntionPointBean fpBean, String projectID) {
		boolean result = true;
		try {
			Project project = em.find(Project.class, projectID);
			FpEstimating fp = new FpEstimating();
			fp.setProject(project);
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
	public boolean updateFuntionPoint(FuntionPointBean fpBean, String fpID) {
		boolean result = false;
		try {
			HashMap<String, String> maps = fpPointUtils.mapValueFunctionPoint(fpBean);
			FpEstimating fp = em.find(FpEstimating.class, fpID);
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
