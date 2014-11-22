package com.estimating.service;

import java.util.List;

import com.estimating.beans.FuntionPointBean;
import com.estimating.beans.UseCasePointBean;
import com.estimating.domain.UcpEstiamting;

public interface IUseCasePointService {

	public double calTotalUseCasePoint(UseCasePointBean ucpBean);
	public boolean addUseCasePoint(UseCasePointBean ucBean);
	public boolean updateUseCasePoint(UseCasePointBean ucBean);
	public double calCostUc(UseCasePointBean ucBean);
	public List<UcpEstiamting> getAllListUc();

	
}
