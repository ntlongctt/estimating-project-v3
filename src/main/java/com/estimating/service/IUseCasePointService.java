package com.estimating.service;

import java.util.List;
import java.util.Set;

import com.estimating.beans.SearchUseCasePointBean;
import com.estimating.beans.UseCasePointBean;
import com.estimating.domain.UcpEstiamting;

public interface IUseCasePointService {

	public double calTotalUseCasePoint(UseCasePointBean ucpBean);
	public boolean addUseCasePoint(UseCasePointBean ucBean);
	public boolean updateUseCasePoint(UseCasePointBean ucBean);
	public double calCostUc(UseCasePointBean ucBean);
	public List<UcpEstiamting> getAllListUc();
	public List<UcpEstiamting> findListUcpByUsername(String username);	
	public Set<Integer> listUcpIdToSearchVip(List<UcpEstiamting> listUcpEstiamting, SearchUseCasePointBean searchBean); 
}

