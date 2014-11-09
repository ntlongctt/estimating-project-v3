package com.estimating.service;

import org.springframework.stereotype.Service;

import com.estimating.beans.UseCasePointBean;
import com.estimating.utils.UseCasePointCalculatorUtils;

@Service
public class UseCasePointImpl implements IUseCasePointService {

	@SuppressWarnings("static-access")
	@Override
	public UseCasePointBean calTotalUseCasePoint(UseCasePointBean ucpBean) {
		UseCasePointCalculatorUtils ucpUtils = new UseCasePointCalculatorUtils();

		UseCasePointBean uc = new UseCasePointBean();
		
		uc.setWuc(ucpUtils.calculator_WUCs(ucpBean.getSimple(), ucpBean.getAverage(), ucpBean.getComplex()));
		uc.setWas(ucpUtils.calculator_WAs(ucpBean.getEasy(), ucpBean.getMedium(), ucpBean.getDifficult()));
		uc.setTcf(ucpUtils.calculator_TCF(ucpBean));
		uc.setEfc(ucpUtils.calculator_ECF(ucpBean));
		uc.setUucp(ucpUtils.calUUCP(ucpBean));
		uc.setTotalUCP(ucpUtils.calTotalUCP(ucpBean));
		
		return uc;
	}

	@Override
	public double calWUC(UseCasePointBean ucpBean) {
		// TODO Auto-generated method stub
		return 0;
	}

}
