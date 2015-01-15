package com.estimating.beans;

import java.io.Serializable;

/**
 * @author Administrator
 *
 */
public class UseCasePointBean implements Serializable {
	/**
	 * 
	 */

	public UseCasePointBean() {
		super();
	}

	private static final long serialVersionUID = 1L;
	private double easy;
	private double medium;
	private double difficult;

	private double simple;
	private double average;
	private double complex;

	private double distributed;
	private double performance;
	private double endUserefficiency;
	private double complexProcessing;
	private double reusableCode;
	private double easeofInstallation;
	private double easeofUse;
	private double portable;
	private double easeofChange;
	private double concurrentUse;
	private double accessforThirdParties;
	private double specialSecurity;
	private double trainingNeeds;

	private double familiarwithDevelopmentProcess;
	private double applicationExperience;
	private double objectOrientedExperience;
	private double leadAnalystCapability;
	private double motivation;
	private double stableRequirements;
	private double parttimeStaff;
	private double difficulProgrammingLanguage;

	
	private double wuc;
	private double was;
	private double efc;
	private double tcf;
	private double uucp;
	private double totalUCP;
	
	private double cost;
	
	private int projectID;
	
	private double hour;
	
	private int version;
	
	private int ucpId;
	
	private String tenProject;

	private int fpID;

	private String errorMessage;

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public int getUcpId() {
		return ucpId;
	}

	public void setUcpId(int ucpId) {
		this.ucpId = ucpId;
	}

	public double getTotalUCP() {
		return totalUCP;
	}

	public void setTotalUCP(double totalUCP) {
		this.totalUCP = totalUCP;
	}

	public double getEasy() {
		return easy;
	}

	public void setEasy(double easy) {
		this.easy = easy;
	}

	public double getMedium() {
		return medium;
	}

	public void setMedium(double medium) {
		this.medium = medium;
	}

	public double getDifficult() {
		return difficult;
	}

	public void setDifficult(double difficult) {
		this.difficult = difficult;
	}

	public double getSimple() {
		return simple;
	}

	public void setSimple(double simple) {
		this.simple = simple;
	}

	public double getAverage() {
		return average;
	}

	public void setAverage(double average) {
		this.average = average;
	}

	public double getComplex() {
		return complex;
	}

	public void setComplex(double complex) {
		this.complex = complex;
	}

	public double getDistributed() {
		return distributed;
	}

	public void setDistributed(double distributed) {
		this.distributed = distributed;
	}

	public double getPerformance() {
		return performance;
	}

	public void setPerformance(double performance) {
		this.performance = performance;
	}

	public double getEndUserefficiency() {
		return endUserefficiency;
	}

	public void setEndUserefficiency(double endUserefficiency) {
		this.endUserefficiency = endUserefficiency;
	}

	public double getComplexProcessing() {
		return complexProcessing;
	}

	public void setComplexProcessing(double complexProcessing) {
		this.complexProcessing = complexProcessing;
	}

	public double getReusableCode() {
		return reusableCode;
	}

	public void setReusableCode(double reusableCode) {
		this.reusableCode = reusableCode;
	}

	public double getEaseofInstallation() {
		return easeofInstallation;
	}

	public void setEaseofInstallation(double easeofInstallation) {
		this.easeofInstallation = easeofInstallation;
	}

	public double getEaseofUse() {
		return easeofUse;
	}

	public void setEaseofUse(double easeofUse) {
		this.easeofUse = easeofUse;
	}

	public double getPortable() {
		return portable;
	}

	public void setPortable(double portable) {
		this.portable = portable;
	}

	public double getEaseofChange() {
		return easeofChange;
	}

	public void setEaseofChange(double easeofChange) {
		this.easeofChange = easeofChange;
	}

	public double getConcurrentUse() {
		return concurrentUse;
	}

	public void setConcurrentUse(double concurrentUse) {
		this.concurrentUse = concurrentUse;
	}

	public double getAccessforThirdParties() {
		return accessforThirdParties;
	}

	public void setAccessforThirdParties(double accessforThirdParties) {
		this.accessforThirdParties = accessforThirdParties;
	}

	public double getSpecialSecurity() {
		return specialSecurity;
	}

	public void setSpecialSecurity(double specialSecurity) {
		this.specialSecurity = specialSecurity;
	}

	public double getTrainingNeeds() {
		return trainingNeeds;
	}

	public void setTrainingNeeds(double trainingNeeds) {
		this.trainingNeeds = trainingNeeds;
	}

	public double getFamiliarwithDevelopmentProcess() {
		return familiarwithDevelopmentProcess;
	}

	public void setFamiliarwithDevelopmentProcess(
			double familiarwithDevelopmentProcess) {
		this.familiarwithDevelopmentProcess = familiarwithDevelopmentProcess;
	}

	public double getApplicationExperience() {
		return applicationExperience;
	}

	public void setApplicationExperience(double applicationExperience) {
		this.applicationExperience = applicationExperience;
	}

	public double getObjectOrientedExperience() {
		return objectOrientedExperience;
	}

	public void setObjectOrientedExperience(double objectOrientedExperience) {
		this.objectOrientedExperience = objectOrientedExperience;
	}

	public double getLeadAnalystCapability() {
		return leadAnalystCapability;
	}

	public void setLeadAnalystCapability(double leadAnalystCapability) {
		this.leadAnalystCapability = leadAnalystCapability;
	}

	public double getMotivation() {
		return motivation;
	}

	public void setMotivation(double motivation) {
		this.motivation = motivation;
	}

	public double getStableRequirements() {
		return stableRequirements;
	}

	public void setStableRequirements(double stableRequirements) {
		this.stableRequirements = stableRequirements;
	}

	public double getParttimeStaff() {
		return parttimeStaff;
	}

	public void setParttimeStaff(double parttimeStaff) {
		this.parttimeStaff = parttimeStaff;
	}

	public double getDifficulProgrammingLanguage() {
		return difficulProgrammingLanguage;
	}

	public void setDifficulProgrammingLanguage(
			double difficulProgrammingLanguage) {
		this.difficulProgrammingLanguage = difficulProgrammingLanguage;
	}



	public double getWas() {
		return was;
	}

	public void setWas(double was) {
		this.was = was;
	}

	public double getEfc() {
		return efc;
	}

	public void setEfc(double efc) {
		this.efc = efc;
	}

	public double getTcf() {
		return tcf;
	}

	public void setTcf(double tcf) {
		this.tcf = tcf;
	}

	public double getUucp() {
		return uucp;
	}

	public void setUucp(double uucp) {
		this.uucp = uucp;
	}

	public double getWuc() {
		return wuc;
	}

	public void setWuc(double wuc) {
		this.wuc = wuc;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public int getProjectID() {
		return projectID;
	}

	public void setProjectID(int projectID) {
		this.projectID = projectID;
	}

	public double getHour() {
		return hour;
	}

	public void setHour(double hour) {
		this.hour = hour;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	public String getTenProject() {
		return tenProject;
	}

	public void setTenProject(String tenProject) {
		this.tenProject = tenProject;
	}

	public int getFpID() {
		return fpID;
	}

	public void setFpID(int fpID) {
		this.fpID = fpID;
	}

}
