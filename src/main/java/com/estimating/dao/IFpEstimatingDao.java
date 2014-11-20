package com.estimating.dao;

import com.estimating.beans.FuntionPointBean;
import com.estimating.domain.FpEstimating;

public interface IFpEstimatingDao {
	public boolean addFpEstimating(FpEstimating fpEstimating);
	public boolean addFuntionPoint(FuntionPointBean fpBean, String projectID);
	public boolean updateFuntionPoint(FuntionPointBean fpBean, String fpID);
}
