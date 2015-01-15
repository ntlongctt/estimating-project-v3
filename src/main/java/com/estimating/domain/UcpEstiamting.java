package com.estimating.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 * The persistent class for the ucp_estiamting database table.
 * 
 */
@Entity
@Table(name="ucp_estiamting")
@NamedQuery(name="UcpEstiamting.findAll", query="SELECT u FROM UcpEstiamting u")
public class UcpEstiamting implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int maUCP_Es;

	private String actor;

	private double cost;

	private double efc;

	private String enviriment_Factor;

	private double hour;

	@Temporal(TemporalType.DATE)
	private Date ngay;

	private double tcf;

	private String technical_Factor;

	private double total;

	private String useCase;

	private int version;

	private double was;

	private double wus;

	//bi-directional many-to-one association to Project
	@ManyToOne
	@JoinColumn(name="MaProject")
	private Project project;

	public UcpEstiamting() {
	}

	public int getMaUCP_Es() {
		return this.maUCP_Es;
	}

	public void setMaUCP_Es(int maUCP_Es) {
		this.maUCP_Es = maUCP_Es;
	}

	public String getActor() {
		return this.actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}



	public double getEfc() {
		return this.efc;
	}

	public void setEfc(double efc) {
		this.efc = efc;
	}

	public String getEnviriment_Factor() {
		return this.enviriment_Factor;
	}

	public void setEnviriment_Factor(String enviriment_Factor) {
		this.enviriment_Factor = enviriment_Factor;
	}

	public double getHour() {
		return this.hour;
	}

	public void setHour(double hour) {
		this.hour = hour;
	}

	public Date getNgay() {
		return this.ngay;
	}

	public void setNgay(Date ngay) {
		this.ngay = ngay;
	}

	public double getTcf() {
		return this.tcf;
	}

	public void setTcf(double tcf) {
		this.tcf = tcf;
	}

	public String getTechnical_Factor() {
		return this.technical_Factor;
	}

	public void setTechnical_Factor(String technical_Factor) {
		this.technical_Factor = technical_Factor;
	}

	public double getTotal() {
		return this.total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public String getUseCase() {
		return this.useCase;
	}

	public void setUseCase(String useCase) {
		this.useCase = useCase;
	}

	public int getVersion() {
		return this.version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	public double getWas() {
		return this.was;
	}

	public void setWas(double was) {
		this.was = was;
	}

	public double getWus() {
		return this.wus;
	}

	public void setWus(double wus) {
		this.wus = wus;
	}

	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	/**
	 * @return the cost
	 */
	public double getCost() {
		return cost;
	}

	/**
	 * @param cost the cost to set
	 */
	public void setCost(double cost) {
		this.cost = cost;
	}

}