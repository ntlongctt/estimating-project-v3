package com.estimating.beans;

import java.io.Serializable;

/**
 * 
 * @author Ch�T�m
 *
 */

public class FuntionPointBean implements Serializable {

	public FuntionPointBean() {
		super();
	}

	private static final long serialVersionUID = 1L;

	// User input
	private double uiSimple;
	private double uiAverage;
	private double uiComplex;

	// User output
	private double uoSimple;
	private double uoAverage;
	private double uoComplex;

	// User online query
	private double uqSimple;
	private double uqAverage;
	private double uqComplex;

	// Internal logical file
	private double ilfSimple;
	private double ilfAverage;
	private double ilfComplex;

	// External interface file
	private double eifSimple;
	private double eifAverage;
	private double eifComplex;

	// Relative Factor
	private double rf1;
	private double rf2;
	private double rf3;
	private double rf4;
	private double rf5;
	private double rf6;
	private double rf7;
	private double rf8;
	private double rf9;
	private double rf10;
	private double rf11;
	private double rf12;
	private double rf13;
	private double rf14;

	private double cost;
	
	private int projectID;
	
	public int getProjectID() {
		return projectID;
	}

	public void setProjectID(int projectID) {
		this.projectID = projectID;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public double getRf1() {
		return rf1;
	}

	public void setRf1(double rf1) {
		this.rf1 = rf1;
	}

	public double getRf2() {
		return rf2;
	}

	public void setRf2(double rf2) {
		this.rf2 = rf2;
	}

	public double getRf3() {
		return rf3;
	}

	public void setRf3(double rf3) {
		this.rf3 = rf3;
	}

	public double getRf4() {
		return rf4;
	}

	public void setRf4(double rf4) {
		this.rf4 = rf4;
	}

	public double getRf5() {
		return rf5;
	}

	public void setRf5(double rf5) {
		this.rf5 = rf5;
	}

	public double getRf6() {
		return rf6;
	}

	public void setRf6(double rf6) {
		this.rf6 = rf6;
	}

	public double getRf7() {
		return rf7;
	}

	public void setRf7(double rf7) {
		this.rf7 = rf7;
	}

	public double getRf8() {
		return rf8;
	}

	public void setRf8(double rf8) {
		this.rf8 = rf8;
	}

	public double getRf9() {
		return rf9;
	}

	public void setRf9(double rf9) {
		this.rf9 = rf9;
	}

	public double getRf10() {
		return rf10;
	}

	public void setRf10(double rf10) {
		this.rf10 = rf10;
	}

	public double getRf11() {
		return rf11;
	}

	public void setRf11(double rf11) {
		this.rf11 = rf11;
	}

	public double getRf12() {
		return rf12;
	}

	public void setRf12(double rf12) {
		this.rf12 = rf12;
	}

	public double getRf13() {
		return rf13;
	}

	public void setRf13(double rf13) {
		this.rf13 = rf13;
	}

	public double getRf14() {
		return rf14;
	}

	public void setRf14(double rf14) {
		this.rf14 = rf14;
	}

	// Total of funtionpoint
	private double totalFP;

	public double getUiSimple() {
		return uiSimple;
	}

	public void setUiSimple(double uiSimple) {
		this.uiSimple = uiSimple;
	}

	public double getUiAverage() {
		return uiAverage;
	}

	public void setUiAverage(double uiAverage) {
		this.uiAverage = uiAverage;
	}

	public double getUiComplex() {
		return uiComplex;
	}

	public void setUiComplex(double uiComplex) {
		this.uiComplex = uiComplex;
	}

	public double getUoSimple() {
		return uoSimple;
	}

	public void setUoSimple(double uoSimple) {
		this.uoSimple = uoSimple;
	}

	public double getUoAverage() {
		return uoAverage;
	}

	public void setUoAverage(double uoAverage) {
		this.uoAverage = uoAverage;
	}

	public double getUoComplex() {
		return uoComplex;
	}

	public void setUoComplex(double uoComplex) {
		this.uoComplex = uoComplex;
	}

	public double getUqSimple() {
		return uqSimple;
	}

	public void setUqSimple(double uqSimple) {
		this.uqSimple = uqSimple;
	}

	public double getUqAverage() {
		return uqAverage;
	}

	public void setUqAverage(double uqAverage) {
		this.uqAverage = uqAverage;
	}

	public double getUqComplex() {
		return uqComplex;
	}

	public void setUqComplex(double uqComplex) {
		this.uqComplex = uqComplex;
	}

	public double getIlfSimple() {
		return ilfSimple;
	}

	public void setIlfSimple(double ilfSimple) {
		this.ilfSimple = ilfSimple;
	}

	public double getIlfAverage() {
		return ilfAverage;
	}

	public void setIlfAverage(double ilfAverage) {
		this.ilfAverage = ilfAverage;
	}

	public double getIlfComplex() {
		return ilfComplex;
	}

	public void setIlfComplex(double ilfComplex) {
		this.ilfComplex = ilfComplex;
	}

	public double getEifSimple() {
		return eifSimple;
	}

	public void setEifSimple(double eifSimple) {
		this.eifSimple = eifSimple;
	}

	public double getEifAverage() {
		return eifAverage;
	}

	public void setEifAverage(double eifAverage) {
		this.eifAverage = eifAverage;
	}

	public double getEifComplex() {
		return eifComplex;
	}

	public void setEifComplex(double eifComplex) {
		this.eifComplex = eifComplex;
	}

	public double getrF1() {
		return rf1;
	}

	public void setrF1(double rf1) {
		this.rf1 = rf1;
	}

	public double getrF2() {
		return rf2;
	}

	public void setrF2(double rf2) {
		this.rf2 = rf2;
	}

	public double getrF3() {
		return rf3;
	}

	public void setrF3(double rf3) {
		this.rf3 = rf3;
	}

	public double getrF4() {
		return rf4;
	}

	public void setrF4(double rf4) {
		this.rf4 = rf4;
	}

	public double getrF5() {
		return rf5;
	}

	public void setrF5(double rf5) {
		this.rf5 = rf5;
	}

	public double getrF6() {
		return rf6;
	}

	public void setrF6(double rf6) {
		this.rf6 = rf6;
	}

	public double getrF7() {
		return rf7;
	}

	public void setrF7(double rf7) {
		this.rf7 = rf7;
	}

	public double getrF8() {
		return rf8;
	}

	public void setrF8(double rF8) {
		this.rf8 = rF8;
	}

	public double getrF9() {
		return rf9;
	}

	public void setrF9(double rf9) {
		this.rf9 = rf9;
	}

	public double getrF10() {
		return rf10;
	}

	public void setrF10(double rf10) {
		this.rf10 = rf10;
	}

	public double getrF11() {
		return rf11;
	}

	public void setrF11(double rf11) {
		this.rf11 = rf11;
	}

	public double getrF12() {
		return rf12;
	}

	public void setrF12(double rf12) {
		this.rf12 = rf12;
	}

	public double getrF13() {
		return rf13;
	}

	public void setrF13(double rf13) {
		this.rf13 = rf13;
	}

	public double getrF14() {
		return rf14;
	}

	public void setrF14(double rf14) {
		this.rf14 = rf14;
	}

	public double getTotalFP() {
		return totalFP;
	}

	public void setTotalFP(double totalFP) {
		this.totalFP = totalFP;
	}

}
