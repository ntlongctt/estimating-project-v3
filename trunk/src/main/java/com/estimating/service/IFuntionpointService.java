package com.estimating.service;

import com.estimating.beans.FuntionPointBean;

public interface IFuntionpointService {
	public double calFuntionPoint(FuntionPointBean fpBean);
	public boolean addFuntionPoint(FuntionPointBean fpBean);
	public boolean updateFuntionPoint(FuntionPointBean fpBean);
	public double calCostFp(FuntionPointBean fpBean);
}
