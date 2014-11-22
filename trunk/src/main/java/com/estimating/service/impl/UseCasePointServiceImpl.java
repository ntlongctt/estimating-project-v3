package com.estimating.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.estimating.beans.UseCasePointBean;
import com.estimating.dao.IUseCasePointDao;
import com.estimating.domain.UcpEstiamting;
import com.estimating.service.IUseCasePointService;
import com.estimating.utils.UseCasePointUtils;

@Service
public class UseCasePointServiceImpl implements IUseCasePointService {

	@SuppressWarnings("static-access")
	UseCasePointUtils ucPointUltils = new UseCasePointUtils();
	@Autowired
	IUseCasePointDao ucDao;


	
	@Override
	public double calTotalUseCasePoint(UseCasePointBean ucpBean) {
		return ucPointUltils.calTotalUCP(ucpBean);
	}
	
	@Override
	public boolean addUseCasePoint(UseCasePointBean ucBean) {
		return ucDao.addUseCasePoint(ucBean);
	}

	@Override
	public boolean updateUseCasePoint(UseCasePointBean ucBean) {
		return ucDao.updateUseCasePoint(ucBean);
	}

	@Override
	public double calCostUc(UseCasePointBean ucBean) {
		return ucPointUltils.calculateCostUc(ucBean);
	}

	@Override
	public List<UcpEstiamting> getAllListUc() {
		return ucDao.getAllListUc();
	}


}
