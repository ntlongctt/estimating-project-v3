package com.estimating.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;

import com.estimating.beans.FuntionPointBean;
import com.estimating.beans.UseCasePointBean;
import com.estimating.domain.FpEstimating;
import com.estimating.domain.UcpEstiamting;

public class FuntionPointUtils {

	private static final Logger logger = Logger
			.getLogger(FuntionPointUtils.class);

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
	
	public double calculateCostFp(FuntionPointBean fpBean) {
		FuntionPointUtils fpUtils = new FuntionPointUtils();
		fpBean.setTotalFP(fpUtils.calTotalFP(fpBean));
		return fpBean.getTotalFP() * 20 * fpBean.getWage();
	}
	public double calculateHour(FuntionPointBean fpBean){
		double totalHour = fpBean.getTotalFP()*20;
		return totalHour;
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
		FuntionPointUtils fpUtil = new FuntionPointUtils();
		maps.put(Constants.FUNCTION_POINT_USER_INPUT, strUIPoint);
		maps.put(Constants.FUNCTION_POINT_USER_OUTPUT, strUOPoint);
		maps.put(Constants.FUNCTION_POINT_USER_ONLINE_QUERY, strUQPoint);
		maps.put(Constants.FUNCTION_POINT_LOGICAL_FILE, strILFPoint);
		maps.put(Constants.FUNCTION_POINT_EXTERNAL_INTERFACE, strEIFPoint);
		maps.put(Constants.FUNCTION_POINT_RELATIVE_FACTOR, strRACF);
		maps.put(Constants.FUNCTION_POINT_TOTAL,
				String.valueOf(fpUtil.calTotalFP(fpBean)));
		maps.put(Constants.FUNCTION_POINT_TOTALUI, String.valueOf(FuntionPointUtils.calculateUIP(fpBean.getUiSimple(), fpBean.getUiAverage(), fpBean.getUiComplex())));
		maps.put(Constants.FUNCTION_POINT_TOTALUO, String.valueOf(FuntionPointUtils.calculateUOP(fpBean.getUoSimple(), fpBean.getUoAverage(), fpBean.getUoComplex())));
		maps.put(Constants.FUNCTION_POINT_TOTALUQ, String.valueOf(FuntionPointUtils.calculateUQP(fpBean.getUqSimple(), fpBean.getUqAverage(), fpBean.getUqComplex())));
		maps.put(Constants.FUNCTION_POINT_TOTALEIF, String.valueOf(FuntionPointUtils.calculateEIF(fpBean.getEifSimple(), fpBean.getEifAverage(), fpBean.getEifComplex())));
		maps.put(Constants.FUNCTION_POINT_TOTALILF, String.valueOf(FuntionPointUtils.calculateILF(fpBean.getIlfSimple(), fpBean.getIlfAverage(), fpBean.getIlfComplex())));
		maps.put(Constants.FUNCTION_POINT_TOTALRACF, String.valueOf(FuntionPointUtils.calculateRACF(fpBean)));
		maps.put(Constants.FUNCTION_POINT_COST, String.valueOf(fpUtil.calculateCostFp(fpBean)));
		maps.put(Constants.FUNCTION_POINT_TOTALHOUR, String.valueOf(fpUtil.calculateHour(fpBean)));
		return maps;
	}

	
	public FuntionPointBean parseSingleFpToSingleBean(FpEstimating fpEstimating){
		FuntionPointBean fpBean;
		fpBean = new FuntionPointBean();
		String strUIPoint = fpEstimating.getUser_Input();
		List<Double> listDouble = new ArrayList<Double>();
		listDouble = ParseStringToArrayUtils.parseToArray(strUIPoint);
		fpBean.setUiSimple(listDouble.get(0));
		fpBean.setUiAverage(listDouble.get(1));
		fpBean.setUiComplex(listDouble.get(02));
		
		listDouble.clear();
		String strUOPoint = fpEstimating.getUser_Output();
		listDouble = ParseStringToArrayUtils.parseToArray(strUOPoint);
		fpBean.setUoSimple(listDouble.get(0));
		fpBean.setUoAverage(listDouble.get(1));
		fpBean.setUoComplex(listDouble.get(2));
		
		listDouble.clear();
		String strUQPoint = fpEstimating.getUser_Online_Query();
		listDouble = ParseStringToArrayUtils.parseToArray(strUQPoint);
		fpBean.setUqSimple(listDouble.get(0));
		fpBean.setUqAverage(listDouble.get(1));
		fpBean.setUqComplex(listDouble.get(2));
		
		listDouble.clear();
		String strILFPoint = fpEstimating.getLogical_File();
		listDouble = ParseStringToArrayUtils.parseToArray(strILFPoint);
		fpBean.setIlfSimple(listDouble.get(0));
		fpBean.setIlfAverage(listDouble.get(1));
		fpBean.setIlfComplex(listDouble.get(2));
		
		listDouble.clear();
		String strEIFPoint = fpEstimating.getExternal_Interface();
		listDouble = ParseStringToArrayUtils.parseToArray(strEIFPoint);
		fpBean.setEifSimple(listDouble.get(0));
		fpBean.setEifAverage(listDouble.get(1));
		fpBean.setEifComplex(listDouble.get(2));
		
		listDouble.clear();
		String strRACF = fpEstimating.getRelative_Factor();
		listDouble = ParseStringToArrayUtils.parseToArray(strRACF);
		fpBean.setRf1(listDouble.get(0));
		fpBean.setRf2(listDouble.get(1));
		fpBean.setRf3(listDouble.get(2));
		fpBean.setRf4(listDouble.get(3));
		fpBean.setRf5(listDouble.get(4));
		fpBean.setRf6(listDouble.get(5));
		fpBean.setRf7(listDouble.get(6));
		fpBean.setRf8(listDouble.get(7));
		fpBean.setRf9(listDouble.get(8));
		fpBean.setRf10(listDouble.get(9));
		fpBean.setRf11(listDouble.get(10));
		fpBean.setRf12(listDouble.get(11));
		fpBean.setRf13(listDouble.get(12));
		fpBean.setRf14(listDouble.get(13));
		
		fpBean.setProjectID(fpEstimating.getProject().getMaProject());
		fpBean.setTotalHour(fpEstimating.getTotal());
		fpBean.setCost(fpEstimating.getTotalHour()*20);
		
		return fpBean;
		
	}
	
}
