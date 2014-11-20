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
	public boolean addFuntionPoint(FuntionPointBean fpBean, String projectID) {
		return fpDao.addFuntionPoint(fpBean, projectID);
	}

	@Override
	public boolean updateFuntionPoint(FuntionPointBean fpBean, String fpID) {
		return fpDao.updateFuntionPoint(fpBean, fpID);
	}
}
