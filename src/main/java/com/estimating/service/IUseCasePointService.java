package com.estimating.service;

import java.util.List;
import java.util.Set;

import com.estimating.beans.SearchUseCasePointBean;
import com.estimating.beans.UseCasePointBean;
import com.estimating.domain.UcpEstiamting;

public interface IUseCasePointService {

	public double calTotalUseCasePoint(UseCasePointBean ucpBean);
	public double calWuc(UseCasePointBean ucpBean);
	public double calWas(UseCasePointBean ucpBean);
	public double calTfc(UseCasePointBean ucpBean);
	public double calEcf(UseCasePointBean ucpBean);
	
	public boolean addUseCasePoint(UseCasePointBean ucBean);
	public boolean updateUseCasePoint(UseCasePointBean ucBean, boolean newVersion);
	public double calCostUc(UseCasePointBean ucBean);
	public List<UseCasePointBean> parseUcpDaoToBean(List<UcpEstiamting> listUcEs);
	public List<UcpEstiamting> getAllListUc();
	public List<UcpEstiamting> findListUcpByUsername(String username);	
	public Set<Integer> listUcpIdToSearchVip(List<UcpEstiamting> listUcpEstiamting, SearchUseCasePointBean searchBean); 
	public Set<Integer> listUcpIdToSearch(List<UcpEstiamting> listUcpEstiamting, SearchUseCasePointBean searchBean); 
	
	public UseCasePointBean findUseCasePointByUCId(int id);
	public double maxcost();
}

