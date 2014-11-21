package com.estimating.dao;

import com.estimating.beans.FuntionPointBean;

public interface IFpEstimatingDao {
	public boolean addFuntionPoint(String projectID);
	public boolean updateFuntionPoint(FuntionPointBean fpBean, String fpID);
}
