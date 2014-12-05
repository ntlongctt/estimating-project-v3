package com.estimating.dao;

import java.util.List;

import com.estimating.beans.UseCasePointBean;
import com.estimating.domain.UcpEstiamting;

public interface IUseCasePointDao {
	public boolean addUseCasePoint(UseCasePointBean ucBean);
	public boolean updateUseCasePoint(UseCasePointBean ucBean);
	public List<UcpEstiamting> getListUcpEstimated(int projectID);	
	public List<UcpEstiamting> getAllListUc();
	public List<UcpEstiamting> findListUcpByUsername(String username);
}
