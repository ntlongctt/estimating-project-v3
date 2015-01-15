package com.estimating.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Scanner;

import org.apache.log4j.Logger;

import com.estimating.beans.UseCasePointBean;
import com.estimating.domain.UcpEstiamting;

public class UseCasePointUtils {

	private static final Logger logger = Logger
			.getLogger(UseCasePointUtils.class);
	@SuppressWarnings("unused")
	private static final UseCasePointBean ucpBean = null;

	public static double calculator_WUCs(double ucSimple, double ucAverage,
			double ucComplex) {
		double wuc;
		wuc = ucSimple * Constants.USE_CASE_SIMPLE + ucAverage
				* Constants.USE_CASE_AVERAGE + ucComplex* Constants.USE_CASE_COMPLEX;
		return wuc;
	}

	public static double calculator_WAs(double aSimple, double aAverage,
			double aComplex) {
		return aSimple * Constants.ACTOR_SIMPLE + aAverage
				* Constants.ACTOR_AVERAGE + aComplex * Constants.ACTOR_COMPLEX;
	}
	
	@SuppressWarnings("unused")
	public static double calculator_TCF(UseCasePointBean useCasePointBean) {
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
		logger.info("Tong use case:" + totalUCP );
		logger.info("uucp:" + uucp );
		logger.info("calculate_TCF:" + calculate_TCF );
		logger.info("calculate_ECF" + calculate_ECF );
		logger.info("===============================");
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
	
	/**
	 * @return HashMap value use case point to update or save to database
	 */
	public HashMap<String, String> mapValueUseCasePoint(UseCasePointBean ucBean){
		HashMap< String, String> maps = new HashMap<String, String>();
		
		// Actor
		String srtWASPoint = String.valueOf(ucBean.getSimple()) + ";"
				+ String.valueOf(ucBean.getAverage()) + ";"
				+ String.valueOf(ucBean.getComplex());
		
		// Use case
		String srtWUCPoint = String.valueOf(ucBean.getEasy()) + ";"
				+ String.valueOf(ucBean.getMedium()) + ";"
				+ String.valueOf(ucBean.getDifficult());
		
		// Technical
		String srtTFCPoint = String.valueOf(ucBean.getDistributed()) + ";"
				+ String.valueOf(ucBean.getPerformance()) + ";"
				+ String.valueOf(ucBean.getEndUserefficiency()) + ";"
				+ String.valueOf(ucBean.getComplexProcessing()) + ";"
				+ String.valueOf(ucBean.getReusableCode()) + ";"
				+ String.valueOf(ucBean.getEaseofInstallation()) + ";"
				+ String.valueOf(ucBean.getEaseofUse()) + ";"
				+ String.valueOf(ucBean.getPortable()) + ";"
				+ String.valueOf(ucBean.getEaseofChange()) + ";"
				+ String.valueOf(ucBean.getConcurrentUse()) + ";"
				+ String.valueOf(ucBean.getSpecialSecurity()) + ";"
				+ String.valueOf(ucBean.getAccessforThirdParties()) + ";"
				+ String.valueOf(ucBean.getTrainingNeeds());
		
		// Environment
		String srtEFCPoint =  String.valueOf(ucBean.getFamiliarwithDevelopmentProcess()) + ";"
				+ String.valueOf(ucBean.getApplicationExperience()) + ";"
				+ String.valueOf(ucBean.getObjectOrientedExperience()) + ";"
				+ String.valueOf(ucBean.getLeadAnalystCapability()) + ";"
				+ String.valueOf(ucBean.getMotivation()) + ";"
				+ String.valueOf(ucBean.getStableRequirements()) + ";"
				+ String.valueOf(ucBean.getParttimeStaff()) + ";"
				+ String.valueOf(ucBean.getDifficulProgrammingLanguage()) ;
		UseCasePointUtils ucpUltil = new UseCasePointUtils();
		maps.put(Constants.USECASE_POINT_WAS, srtWASPoint);
		maps.put(Constants.USECASE_POINT_WUC, srtWUCPoint);
		maps.put(Constants.USECASE_POINT_TECHNICAL_FACTOR, srtTFCPoint);
		maps.put(Constants.USECASE_POINT_ENVIRIMENT_FACTOR, srtEFCPoint);
		maps.put(Constants.USECASE_WUS, String.valueOf(UseCasePointUtils.calculator_WAs(ucBean.getSimple(), ucBean.getAverage(), ucBean.getComplex())));
		maps.put(Constants.USECASE_WAS, String.valueOf(UseCasePointUtils.calculator_WUCs(ucBean.getEasy(), ucBean.getMedium(), ucBean.getDifficult())));
		maps.put(Constants.USECASE_TCF, String.valueOf(UseCasePointUtils.calculator_TCF(ucBean)));
		maps.put(Constants.USECASE_EFC, String.valueOf(UseCasePointUtils.calculator_ECF(ucBean)));
		maps.put(Constants.USECASE_TOTAL_HOUR, String.valueOf(ucBean.getHour() * ucpUltil.calTotalUCP(ucBean)));
		maps.put(Constants.USECASE_COST, String.valueOf(ucBean.getCost() * ucpUltil.calTotalUCP(ucBean) * ucBean.getHour() ));
		maps.put(Constants.USECASE_POINT_TOTAL, String.valueOf(ucpUltil.calTotalUCP(ucBean)));
		
		return maps;
		
	}
	
	public double calculateCostUc(UseCasePointBean ucBean){
		UseCasePointUtils ucUltils = new UseCasePointUtils();
		ucBean.setTotalUCP(ucUltils.calTotalUCP(ucBean));
		return ucBean.getTotalUCP()*80000*ucBean.getHour();
	}
	
	
	/**
	 * @return List UseCasePointBean from UcpEstiamting
	 */
	public List<UseCasePointBean> parseUcpDaoToBean(List<UcpEstiamting> listUcpEstiamting) {
		
		List<UseCasePointBean> listUseCasePointBean = new  ArrayList<UseCasePointBean>();
		UseCasePointBean ucpBean;
		List<Double> listDouble = new ArrayList<Double>();
		for (UcpEstiamting ucpDao : listUcpEstiamting) {
			/** Get Use Case Point Weight */
			String usecase = ucpDao.getUseCase();
			listDouble = ParseStringToArrayUtils.parseToArray(usecase);
			ucpBean = new UseCasePointBean();
			ucpBean.setEasy(listDouble.get(0));
			ucpBean.setMedium(listDouble.get(1));
			ucpBean.setDifficult(listDouble.get(2));
			
			/** Get Function Point Weight */
			listDouble.clear();
			String function = ucpDao.getActor();
			listDouble = ParseStringToArrayUtils.parseToArray(function);
			ucpBean.setSimple(listDouble.get(0));
			ucpBean.setAverage(listDouble.get(1));
			ucpBean.setComplex(listDouble.get(2));
			
			/** Get Technical Complexity Factor  */
			listDouble.clear();
			String technical = ucpDao.getTechnical_Factor();
			listDouble = ParseStringToArrayUtils.parseToArray(technical);
			ucpBean.setDistributed(listDouble.get(0));
			ucpBean.setPerformance(listDouble.get(1));
			ucpBean.setEndUserefficiency(listDouble.get(2));
			ucpBean.setComplex(listDouble.get(3));
			ucpBean.setReusableCode(listDouble.get(4));
			ucpBean.setEaseofInstallation(listDouble.get(5));
			ucpBean.setEaseofUse(listDouble.get(6));
			ucpBean.setPortable(listDouble.get(7));
			ucpBean.setEaseofChange(listDouble.get(8));
			ucpBean.setConcurrentUse(listDouble.get(9));
			ucpBean.setSpecialSecurity(listDouble.get(10));
			ucpBean.setAccessforThirdParties(listDouble.get(11));
			ucpBean.setTrainingNeeds(listDouble.get(12));
			
			/** Get Inviromental factors*/
			listDouble.clear();
			String enviriment = ucpDao.getEnviriment_Factor();
			listDouble = ParseStringToArrayUtils.parseToArray(enviriment);
			ucpBean.setFamiliarwithDevelopmentProcess(listDouble.get(0));
			ucpBean.setApplicationExperience(listDouble.get(1));
			ucpBean.setObjectOrientedExperience(listDouble.get(2));
			ucpBean.setLeadAnalystCapability(listDouble.get(3));
			ucpBean.setMotivation(listDouble.get(4));
			ucpBean.setStableRequirements(listDouble.get(5));
			ucpBean.setParttimeStaff(listDouble.get(6));
			ucpBean.setDifficulProgrammingLanguage(listDouble.get(7));
			
			/** Set project ID */
			ucpBean.setProjectID(ucpDao.getProject().getMaProject());
			
			listUseCasePointBean.add(ucpBean);
			

		}
		return listUseCasePointBean;
	}
	
	/**
	 * @return List UseCasePointBean from UcpEstiamting
	 */
	
	public UseCasePointBean parseSingleUcpToSingleBean(UcpEstiamting ucEstimating){
		
		UseCasePointBean ucpBean;
		ucpBean = new UseCasePointBean();
		String usecase = ucEstimating.getUseCase();
		List<Double> listDouble = new ArrayList<Double>();
		listDouble = ParseStringToArrayUtils.parseToArray(usecase);
		
		ucpBean.setEasy(listDouble.get(0));
		ucpBean.setMedium(listDouble.get(1));
		ucpBean.setDifficult(listDouble.get(2));
		
		/** Get Function Point Weight */
		listDouble.clear();
		String function = ucEstimating.getActor();
		listDouble = ParseStringToArrayUtils.parseToArray(function);
		ucpBean.setSimple(listDouble.get(0));
		ucpBean.setAverage(listDouble.get(1));
		ucpBean.setComplex(listDouble.get(2));
		
		/** Get Technical Complexity Factor  */
		listDouble.clear();
		String technical = ucEstimating.getTechnical_Factor();
		listDouble = ParseStringToArrayUtils.parseToArray(technical);
		ucpBean.setDistributed(listDouble.get(0));
		ucpBean.setPerformance(listDouble.get(1));
		ucpBean.setEndUserefficiency(listDouble.get(2));
		ucpBean.setComplex(listDouble.get(3));
		ucpBean.setReusableCode(listDouble.get(4));
		ucpBean.setEaseofInstallation(listDouble.get(5));
		ucpBean.setEaseofUse(listDouble.get(6));
		ucpBean.setPortable(listDouble.get(7));
		ucpBean.setEaseofChange(listDouble.get(8));
		ucpBean.setConcurrentUse(listDouble.get(9));
		ucpBean.setSpecialSecurity(listDouble.get(10));
		ucpBean.setAccessforThirdParties(listDouble.get(11));
		ucpBean.setTrainingNeeds(listDouble.get(12));
		
		/** Get Inviromental factors*/
		listDouble.clear();
		String enviriment = ucEstimating.getEnviriment_Factor();
		listDouble = ParseStringToArrayUtils.parseToArray(enviriment);
		ucpBean.setFamiliarwithDevelopmentProcess(listDouble.get(0));
		ucpBean.setApplicationExperience(listDouble.get(1));
		ucpBean.setObjectOrientedExperience(listDouble.get(2));
		ucpBean.setLeadAnalystCapability(listDouble.get(3));
		ucpBean.setMotivation(listDouble.get(4));
		ucpBean.setStableRequirements(listDouble.get(5));
		ucpBean.setParttimeStaff(listDouble.get(6));
		ucpBean.setDifficulProgrammingLanguage(listDouble.get(7));
		
		/** Set project ID */
		ucpBean.setProjectID(ucEstimating.getProject().getMaProject());
		
		/* Set total*/
		ucpBean.setTotalUCP(ucEstimating.getTotal());
		ucpBean.setCost(ucEstimating.getTotal() * 20);
		
		return ucpBean;
		
	}
	
	// Calculate hour
	public static double calHour(UseCasePointBean ucBean) {
		return ucBean.getTotalUCP() * 25;

	}
	
	// Calculate cost
	public static double calCost(UseCasePointBean ucBean) {
		double cost = ucBean.getHour() * 80000;
		return cost;
	}
	
}
