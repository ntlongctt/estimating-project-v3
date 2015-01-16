package com.estimating.service;


import java.util.List;
import java.util.Set;

import com.estimating.beans.FuntionPointBean;
import com.estimating.beans.SearchUseCasePointBean;
import com.estimating.beans.UseCasePointBean;
import com.estimating.domain.FpEstimating;
import com.estimating.domain.UcpEstiamting;

public interface IFuntionpointService {
	public double calFuntionPoint(FuntionPointBean fpBean);
	public boolean addFuntionPoint(FuntionPointBean fpBean);
	public boolean updateFuntionPoint(FuntionPointBean fpBean, boolean newVersion);
	public double calCostFp(FuntionPointBean fpBean);
	public List<FpEstimating> getAllListFp();
	public double maxcost();
	public FuntionPointBean findFunctionPointByUCId(int id);
}



