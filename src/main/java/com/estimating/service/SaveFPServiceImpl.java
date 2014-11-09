package com.estimating.service;

import org.springframework.stereotype.Service;

import com.estimating.beans.FuntionPointBean;
import com.estimating.utils.FuntionPointCalculatorUtils;

@Service
public class SaveFPServiceImpl implements ISaveFPService {

	@Override
	public void resultFunctionPoint(FuntionPointBean fpBean) {

		FuntionPointCalculatorUtils fpUtils = new FuntionPointCalculatorUtils();
		double fpPoint = fpUtils.calTotalFP(fpBean);

		String strUIPoint = String.valueOf(fpBean.getUiSimple()) + ";"
				+ String.valueOf(fpBean.getUiAverage()) + ";"
				+ String.valueOf(fpBean.getUiComplex());
		String strUOPoint = String.valueOf(fpBean.getUoSimple()) + ";"
				+ String.valueOf(fpBean.getUoAverage()) + ";"
				+ String.valueOf(fpBean.getUoComplex());
		String strUQPoint = String.valueOf(fpBean.getUqSimple()) + ";"
				+ String.valueOf(fpBean.getUqAverage()) + ";"
				+ String.valueOf(fpBean.getUqComplex());
		String strILFPoint = String.valueOf(fpBean.getIlfSimple()) + ";"
				+ String.valueOf(fpBean.getIlfAverage()) + ";"
				+ String.valueOf(fpBean.getIlfComplex());
		String strEIFPoint = String.valueOf(fpBean.getEifSimple()) + ";"
				+ String.valueOf(fpBean.getEifAverage()) + ";"
				+ String.valueOf(fpBean.getEifComplex());
		String strRACF = String.valueOf(fpBean.getrF1()) + ";"
				+ String.valueOf(fpBean.getrF2()) + ";"
				+ String.valueOf(fpBean.getrF3()) + ";"
				+ String.valueOf(fpBean.getrF4()) + ";"
				+ String.valueOf(fpBean.getrF5()) + ";"
				+ String.valueOf(fpBean.getrF6()) + ";"
				+ String.valueOf(fpBean.getrF7()) + ";"
				+ String.valueOf(fpBean.getrF8()) + ";"
				+ String.valueOf(fpBean.getrF9()) + ";"
				+ String.valueOf(fpBean.getrF10()) + ";"
				+ String.valueOf(fpBean.getrF11()) + ";"
				+ String.valueOf(fpBean.getrF12()) + ";"
				+ String.valueOf(fpBean.getrF13()) + ";"
				+ String.valueOf(fpBean.getrF14());
	}

}
