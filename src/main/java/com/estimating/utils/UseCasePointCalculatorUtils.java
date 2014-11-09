package com.estimating.utils;

import java.util.Scanner;

import org.apache.log4j.Logger;

import com.estimating.beans.UseCasePointBean;

public class UseCasePointCalculatorUtils {

	@SuppressWarnings("unused")
	private static final Logger logger = Logger
			.getLogger(UseCasePointCalculatorUtils.class);
	@SuppressWarnings("unused")
	private static final UseCasePointBean ucpBean = null;

	public static double calculator_WUCs(double ucSimple, double ucAverage,
			double ucComplex) {
		return ucSimple * Constants.USE_CASE_SIMPLE + ucAverage
				* Constants.USE_CASE_AVERAGE + ucComplex
				* Constants.USE_CASE_COMPLEX;
	}

	public static double calculator_WAs(double aSimple, double aAverage,
			double aComplex) {
		return aSimple * Constants.ACTOR_SIMPLE + aAverage
				* Constants.ACTOR_AVERAGE + aComplex * Constants.ACTOR_COMPLEX;
	}
	
	@SuppressWarnings("unused")
	public static double calculator_TCF(UseCasePointBean useCasePointBean) {
		System.out.print("Input Technical factor: ");
		@SuppressWarnings("resource")
		Scanner sc = new Scanner(System.in);
		double distributed_system, reusable_code, easy_to_change, training_needs, performance_objectives, easy_to_installation, concurrent_use, end_uses_efficiency, easy_to_use, special_security, complex_processing, portable, access_for_3_parties;

		distributed_system = useCasePointBean.getDistributed();
		performance_objectives = useCasePointBean.getPerformance();
		end_uses_efficiency = useCasePointBean.getEndUserefficiency();
		complex_processing = useCasePointBean.getComplexProcessing();
		reusable_code = useCasePointBean.getReusableCode();
		easy_to_installation = useCasePointBean.getEaseofInstallation();
		easy_to_use = useCasePointBean.getEaseofUse();
		portable = useCasePointBean.getPortable();
		easy_to_change = useCasePointBean.getEaseofChange();
		concurrent_use = useCasePointBean.getConcurrentUse();
		special_security = useCasePointBean.getSpecialSecurity();
		access_for_3_parties = useCasePointBean.getAccessforThirdParties();
		training_needs = useCasePointBean.getTrainingNeeds();

		double TCFf = distributed_system * Constants.T1_DISTIBUTED_SYSTEM
				+ reusable_code * Constants.T5_CODE_REUSABILITY
				+ easy_to_change * Constants.T9_SYSTEM_MAINTENANCE
				+ training_needs * Constants.T13_END_USER_TRAINING
				+ performance_objectives * Constants.T2_PERFORMEN_OBJECTIVES
				+ easy_to_installation * Constants.T6_EASY_TO_INSTALL
				+ concurrent_use * Constants.T10_CONCURRENT
				+ end_uses_efficiency * Constants.T3_END_USER_EFFICIENCY
				+ easy_to_use * Constants.T7_EASY_TO_USE + special_security
				* Constants.T11_SECURITY_FEATURES + complex_processing
				* Constants.T4_INTERNAL_PROCESSING_COMPLEXITY + portable
				* Constants.T8_PORTABILITY_TO_OTHER_PLATFORMS
				+ access_for_3_parties * Constants.T12_ACCESS_TO_THIRD_PARTIES;
		double TCF = TCFf * Constants.TCF_VALUE_2 + Constants.TCF_VALUE_1;
		return TCF;

	}
	
	
	
	public static double calculator_ECF(UseCasePointBean useCasePointBean) {
		double ecf_1, ecf_2, ecf_3, ecf_4, ecf_5, ecf_6, ecf_7, ecf_8;
		ecf_1 = useCasePointBean.getFamiliarwithDevelopmentProcess();
		ecf_2 = useCasePointBean.getApplicationExperience();
		ecf_3 = useCasePointBean.getObjectOrientedExperience();
		ecf_4 = useCasePointBean.getLeadAnalystCapability();
		ecf_5 = useCasePointBean.getMotivation();
		ecf_6 = useCasePointBean.getStableRequirements();
		ecf_7 = useCasePointBean.getParttimeStaff();
		ecf_8 = useCasePointBean.getDifficulProgrammingLanguage();
		double ef = ecf_1
				* Constants.E1_FARMILIARITY_WITH_DEVELOPMENT_PROCESS_USES
				+ ecf_2 * Constants.E2_APPLICATION_EXPERIENCE + ecf_3
				* Constants.E3_OBJECT_EXPERIENCE_OF_TEAM + ecf_4
				* Constants.E4_LEAD_ANALYST_CAPABILITY + ecf_5
				* Constants.E5_MOTIVATION_OF_TEAM + ecf_6
				* Constants.E6_STABILITY_OF_REQUIREMENTS + ecf_7
				* Constants.E7_PART_TIME_STAFF + ecf_8
				* Constants.E8_DIFFICULT_PROGRAMING_LANGUAGE;
		double ecf = ef * Constants.ECF_VALUE_1 + Constants.ECF_VALUE_2;
		return ecf;
	}

	public double calTotalUCP(UseCasePointBean ucpBean) {
	
		double calculate_WAs = calculator_WUCs(ucpBean.getEasy(),
				ucpBean.getMedium(), ucpBean.getDifficult());
		double calculate_WUCs = calculator_WAs(ucpBean.getSimple(),
				ucpBean.getAverage(), ucpBean.getComplex());
		double calculate_TCF = calculator_TCF(ucpBean);
		double calculate_ECF = calculator_ECF(ucpBean);
		double uucp = calculate_WAs+calculate_WUCs;
		double totalUCP = uucp * calculate_TCF	* calculate_ECF;
		return totalUCP;
	}
	
	public double calUUCP(UseCasePointBean ucpBean){
		double calculate_WAs = calculator_WUCs(ucpBean.getEasy(),
				ucpBean.getMedium(), ucpBean.getDifficult());
		double calculate_WUCs = calculator_WAs(ucpBean.getSimple(),
				ucpBean.getAverage(), ucpBean.getComplex());
		double uucp = calculate_WUCs + calculate_WAs;
		return uucp;
	}
}
