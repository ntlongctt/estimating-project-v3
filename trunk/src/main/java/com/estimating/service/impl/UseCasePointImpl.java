package com.estimating.service.impl;

import org.springframework.stereotype.Service;

import com.estimating.beans.UseCasePointBean;
import com.estimating.service.IUseCasePointService;
import com.estimating.utils.UseCasePointUtils;

@Service
public class UseCasePointImpl implements IUseCasePointService {

	@SuppressWarnings("static-access")
	@Override
	public UseCasePointBean calTotalUseCasePoint(UseCasePointBean ucpBean) {
		UseCasePointUtils ucpUtils = new UseCasePointUtils();

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
