package com.estimating.dao;

import java.util.List;

import com.estimating.beans.FuntionPointBean;
import com.estimating.domain.FpEstimating;
import com.estimating.domain.UcpEstiamting;

public interface IFpEstimatingDao {
	public boolean addFuntionPoint(FuntionPointBean fpBean);
	public boolean updateFuntionPoint(FuntionPointBean fpBean, boolean newVersion);
	public List<FpEstimating> getListFpEstimated(int projectID);
	public List<FpEstimating> getAllListFp();
	public FpEstimating findFunctionPointByUCId(int id);
	public double maxCost();
}
