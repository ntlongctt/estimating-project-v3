package com.estimating.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.estimating.beans.FuntionPointBean;
import com.estimating.dao.IFpEstimatingDao;
import com.estimating.service.IFuntionpointService;
import com.estimating.utils.FuntionPointUtils;

@Service
public class FuntionPointServiceImpl implements IFuntionpointService {
	FuntionPointUtils fpPointUtils = new FuntionPointUtils();
	
	@Autowired
	IFpEstimatingDao fpDao;
	
	@Override
	public double calFuntionPoint(FuntionPointBean fpPoinBean) {
		return fpPointUtils.calTotalFP(fpPoinBean);
	}

	@Override
	public boolean addFuntionPoint(FuntionPointBean fpBean) {
		return fpDao.addFuntionPoint(fpBean);
	}

	@Override
	public boolean updateFuntionPoint(FuntionPointBean fpBean) {
		return fpDao.updateFuntionPoint(fpBean);
	}

	@Override
	public double calCostFp(FuntionPointBean fpBean) {
		return fpPointUtils.calculateCostFp(fpBean);
	}
}
