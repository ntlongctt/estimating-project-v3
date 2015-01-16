package com.estimating.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.estimating.beans.FuntionPointBean;
import com.estimating.beans.UseCasePointBean;
import com.estimating.dao.IFpEstimatingDao;
import com.estimating.domain.FpEstimating;
import com.estimating.domain.UcpEstiamting;
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
	public boolean updateFuntionPoint(FuntionPointBean fpBean, boolean newVersion) {
		return fpDao.updateFuntionPoint(fpBean,false);
	}

	@Override
	public double calCostFp(FuntionPointBean fpBean) {
		return fpPointUtils.calculateCostFp(fpBean);
	}
	
	
	
	@Override
	public List<FpEstimating> getAllListFp() {
		return fpDao.getAllListFp();
	}

	@Override
	public double maxcost() {
		// TODO Auto-generated method stub
		return fpDao.maxCost();
	}

	@Override
	public FuntionPointBean findFunctionPointByUCId(int id) {
		FpEstimating uc = fpDao.findFunctionPointByUCId(id);
		FuntionPointBean bean = fpPointUtils.parseSingleFpToSingleBean(uc);
		return bean;
	}
	
}
