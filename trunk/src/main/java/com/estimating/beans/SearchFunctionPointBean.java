package com.estimating.beans;

import java.io.Serializable;

public class SearchFunctionPointBean implements Serializable {

	/**
	 * 
	 */
	public SearchFunctionPointBean(){
		
	}
	private static final long serialVersionUID = 1L;
	
	private double fp_from;
	private double fp_to;
	private double fp_total_hour_from;
	private double fp_total_hour_to;
	private double fp_coat_from;
	private double fp_coat_to;
	
	public double getFp_from() {
		return fp_from;
	}
	public void setFp_from(double fp_from) {
		this.fp_from = fp_from;
	}
	public double getFp_to() {
		return fp_to;
	}
	public void setFp_to(double fp_to) {
		this.fp_to = fp_to;
	}
	public double getFp_total_hour_from() {
		return fp_total_hour_from;
	}
	public void setFp_total_hour_from(double fp_total_hour_from) {
		this.fp_total_hour_from = fp_total_hour_from;
	}
	public double getFp_total_hour_to() {
		return fp_total_hour_to;
	}
	public void setFp_total_hour_to(double fp_total_hour_to) {
		this.fp_total_hour_to = fp_total_hour_to;
	}
	public double getFp_coat_from() {
		return fp_coat_from;
	}
	public void setFp_coat_from(double fp_coat_from) {
		this.fp_coat_from = fp_coat_from;
	}
	public double getFp_coat_to() {
		return fp_coat_to;
	}
	public void setFp_coat_to(double fp_coat_to) {
		this.fp_coat_to = fp_coat_to;
	}
	

}
