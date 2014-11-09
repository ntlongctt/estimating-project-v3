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
@Table(name = "ucp_estiamting")
@NamedQuery(name = "UcpEstiamting.findAll", query = "SELECT u FROM UcpEstiamting u")
public class UcpEstiamting implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int maUCP_Es;

	private String actor;

	private String enviriment_Factor;

	@Temporal(TemporalType.DATE)
	private Date ngay;

	private String technical_Factor;

	private double total;

	private String useCase;

	private int version;

	// bi-directional many-to-one association to Project
	@ManyToOne
	@JoinColumn(name = "MaProject")
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

	public String getEnviriment_Factor() {
		return this.enviriment_Factor;
	}

	public void setEnviriment_Factor(String enviriment_Factor) {
		this.enviriment_Factor = enviriment_Factor;
	}

	public Date getNgay() {
		return this.ngay;
	}

	public void setNgay(Date ngay) {
		this.ngay = ngay;
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

	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

}