package com.estimating.service;

import com.estimating.beans.UseCasePointBean;

public interface IUseCasePointService {

	public UseCasePointBean calTotalUseCasePoint(UseCasePointBean ucpBean);
	public double calWUC(UseCasePointBean ucpBean);
	
}

