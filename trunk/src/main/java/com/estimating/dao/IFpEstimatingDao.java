package com.estimating.dao;

import java.util.List;

import com.estimating.beans.FuntionPointBean;
import com.estimating.domain.FpEstimating;

public interface IFpEstimatingDao {
	public boolean addFuntionPoint(FuntionPointBean fpBean);
	public boolean updateFuntionPoint(FuntionPointBean fpBean);
	public List<FpEstimating> getAllListFp();
}
