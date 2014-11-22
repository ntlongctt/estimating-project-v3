package com.estimating.utils;

import java.util.HashMap;

import org.apache.log4j.Logger;

import com.estimating.beans.FuntionPointBean;

public class FuntionPointUtils {

	private static final Logger logger = Logger.getLogger(FuntionPointUtils.class);
	
	public static double calculateUIP(double uiSimple, double uiAverage,
			double uiComplex) {
		return uiSimple * Constants.USER_INPUTS_SIMPLE + uiAverage
				* Constants.USER_INPUTS_AVERAGE + uiComplex
				* Constants.USER_INPUTS_COMPLEX;
	}

	public static double calculateUOP(double uoSimple, double uoAverage,
			double uoComplex) {
		return uoSimple * Constants.USER_OUTPUTS_SIMPLE + uoAverage
				* Constants.USER_OUTPUTS_AVERAGE + uoComplex
				* Constants.USER_OUTPUTS_COMPLEX;
	}

	public static double calculateUQP(double uqSimple, double uqAverage,
			double uqComplex) {
		return uqSimple * Constants.USER_ONLINE_REQUIRES_SIMPLE + uqAverage
				* Constants.USER_ONLINE_REQUIRES_AVERAGE + uqComplex
				* Constants.USER_ONLINE_REQUIRES_COMPLEX;
	}

	public static double calculateILF(double ilfSimple, double ilfAverage,
			double ilfComplex) {
		return ilfSimple * Constants.LOGICAL_FILES_SIMPLE + ilfAverage
				* Constants.LOGICAL_FILES_AVERAGE + ilfComplex
				* Constants.LOGICAL_FILES_COMPLEX;
	}

	public static double calculateEIF(double eifSimple, double eifAverage,
			double eifComplex) {
		return eifSimple * Constants.EXTERNAL_INTERFACES_SIMPLE + eifAverage
				* Constants.EXTERNAL_INTERFACES_AVERAGE + eifComplex
				* Constants.EXTERNAL_INTERFACES_COMPLEX;
	}

	public static double calculateRACF(FuntionPointBean fpPointBean) {
		double totalRACF;
		double rf1 = fpPointBean.getrF1();
		double rf2 = fpPointBean.getrF2();
		double rf3 = fpPointBean.getrF3();
		double rf4 = fpPointBean.getrF4();
		double rf5 = fpPointBean.getrF5();
		double rf6 = fpPointBean.getrF6();
		double rf7 = fpPointBean.getrF7();
		double rf8 = fpPointBean.getrF8();
		double rf9 = fpPointBean.getrF9();
		double rf10 = fpPointBean.getrF10();
		double rf11 = fpPointBean.getrF11();
		double rf12 = fpPointBean.getrF12();
		double rf13 = fpPointBean.getrF13();
		double rf14 = fpPointBean.getrF14();
		totalRACF = rf1 + rf2 + rf3 + rf4 + rf5 + rf6 + rf7 + rf8 + rf9 + rf10
				+ rf11 + rf12 + rf13 + rf14;
		return totalRACF;
	}

	public double calTotalFP(FuntionPointBean fpPointBean) {
		double UIP = calculateUIP(fpPointBean.getUiSimple(),
				fpPointBean.getUiAverage(), fpPointBean.getUiComplex());
		System.out.println("UIP : " + UIP);
		double UOP = calculateUOP(fpPointBean.getUoSimple(),
				fpPointBean.getUoAverage(), fpPointBean.getUoComplex());
		System.out.println("UOP : " + UOP);
		double UQP = calculateUQP(fpPointBean.getUqSimple(),
				fpPointBean.getUqAverage(), fpPointBean.getUqComplex());
		System.out.println("UQP : " + UQP);
		double ILF = calculateILF(fpPointBean.getIlfSimple(),
				fpPointBean.getIlfAverage(), fpPointBean.getIlfComplex());
		System.out.println("ILF : " + ILF);
		double EIF = calculateEIF(fpPointBean.getEifSimple(),
				fpPointBean.getEifAverage(), fpPointBean.getEifComplex());
		System.out.println("EIF : " + EIF);
		double RACF = calculateRACF(fpPointBean);
		System.out.println("RACF : " + RACF);
		double UFP = UIP + UOP + UQP + ILF + EIF;
		double totalFP = (Constants.TCF_C1 + (Constants.TCF_C2 * RACF)) * UFP;
		System.out.println("Total : " + totalFP);
		return totalFP;
	}
	
	/**
	 * @return HashMap value function point to update or save to database
	 */
	public HashMap<String, String> mapValueFunctionPoint(FuntionPointBean fpBean) {
		HashMap<String, String> maps = new HashMap<String, String>();	
			
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
		logger.info("strRACF: " + strRACF);
		maps.put(Constants.FUNCTION_POINT_USER_INPUT, strUIPoint);
		maps.put(Constants.FUNCTION_POINT_USER_OUTPUT, strUOPoint);
		maps.put(Constants.FUNCTION_POINT_USER_ONLINE_QUERY, strUQPoint);
		maps.put(Constants.FUNCTION_POINT_LOGICAL_FILE, strILFPoint);
		maps.put(Constants.FUNCTION_POINT_EXTERNAL_INTERFACE, strEIFPoint);
		maps.put(Constants.FUNCTION_POINT_RELATIVE_FACTOR, strRACF);
		return maps;
	}
	
	public double calculateCostFp(FuntionPointBean fpBean) {
		FuntionPointUtils fpUtils = new FuntionPointUtils();
		fpBean.setTotalFP(fpUtils.calTotalFP(fpBean));
		return fpBean.getTotalFP()*20*fpBean.getHour();
	}
}












