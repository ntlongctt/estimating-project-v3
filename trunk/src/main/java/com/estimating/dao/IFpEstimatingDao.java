package com.estimating.dao;

import com.estimating.beans.FuntionPointBean;

public interface IFpEstimatingDao {
	public boolean addFuntionPoint(FuntionPointBean fpBean);
	public boolean updateFuntionPoint(FuntionPointBean fpBean);
}
