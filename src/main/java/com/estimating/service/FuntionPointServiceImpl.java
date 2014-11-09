package com.estimating.service;

import org.springframework.stereotype.Service;

import com.estimating.beans.FuntionPointBean;
import com.estimating.utils.FuntionPointCalculatorUtils;

@Service
public class FuntionPointServiceImpl implements IFuntionpointService {
	@Override
	public double calFuntionPoint(FuntionPointBean fpPoinBean) {
		FuntionPointCalculatorUtils fpPointUtils = new FuntionPointCalculatorUtils();
		return fpPointUtils.calTotalFP(fpPoinBean);
	}
}
