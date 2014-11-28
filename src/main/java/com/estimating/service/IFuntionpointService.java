package com.estimating.service;


import java.util.List;

import com.estimating.beans.FuntionPointBean;
import com.estimating.domain.FpEstimating;

public interface IFuntionpointService {
	public double calFuntionPoint(FuntionPointBean fpBean);
	public boolean addFuntionPoint(FuntionPointBean fpBean);
	public boolean updateFuntionPoint(FuntionPointBean fpBean);
	public double calCostFp(FuntionPointBean fpBean);
	public List<FpEstimating> getAllListFp();
}
