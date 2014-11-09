package com.estimating.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 
 * @author ChíTâm
 *
 */
@Entity
@Table(name = "fp_estimating")
@NamedQuery(name = "FpEstimating.findAll", query = "SELECT f FROM FpEstimating f")
public class FpEstimating implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int maFP_Es;

	private String external_Interface;

	private String FP_Estimatingcol;

	private String logical_File;

	@Temporal(TemporalType.DATE)
	private Date ngay;

	private String relative_Factor;

	private double total;

	private String user_Input;

	private String user_Online_Query;

	private String user_Output;

	private int version;

	// bi-directional many-to-one association to Project
	@ManyToOne
	@JoinColumn(name = "MaProject")
	private Project project;

	public FpEstimating() {
	}

	public int getMaFP_Es() {
		return this.maFP_Es;
	}

	public void setMaFP_Es(int maFP_Es) {
		this.maFP_Es = maFP_Es;
	}

	public String getExternal_Interface() {
		return this.external_Interface;
	}

	public void setExternal_Interface(String external_Interface) {
		this.external_Interface = external_Interface;
	}

	public String getFP_Estimatingcol() {
		return this.FP_Estimatingcol;
	}

	public void setFP_Estimatingcol(String FP_Estimatingcol) {
		this.FP_Estimatingcol = FP_Estimatingcol;
	}

	public String getLogical_File() {
		return this.logical_File;
	}

	public void setLogical_File(String logical_File) {
		this.logical_File = logical_File;
	}

	public Date getNgay() {
		return this.ngay;
	}

	public void setNgay(Date ngay) {
		this.ngay = ngay;
	}

	public String getRelative_Factor() {
		return this.relative_Factor;
	}

	public void setRelative_Factor(String relative_Factor) {
		this.relative_Factor = relative_Factor;
	}

	public double getTotal() {
		return this.total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public String getUser_Input() {
		return this.user_Input;
	}

	public void setUser_Input(String user_Input) {
		this.user_Input = user_Input;
	}

	public String getUser_Online_Query() {
		return this.user_Online_Query;
	}

	public void setUser_Online_Query(String user_Online_Query) {
		this.user_Online_Query = user_Online_Query;
	}

	public String getUser_Output() {
		return this.user_Output;
	}

	public void setUser_Output(String user_Output) {
		this.user_Output = user_Output;
	}

	public int getVersion() {
		return this.version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

}