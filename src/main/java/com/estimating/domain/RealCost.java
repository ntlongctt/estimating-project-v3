package com.estimating.domain;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the real_cost database table.
 * 
 */
@Entity
@Table(name="real_cost")
@NamedQuery(name="RealCost.findAll", query="SELECT r FROM RealCost r")
public class RealCost implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="idreal_cost")
	private int idrealCost;

	private double cost;

	//bi-directional many-to-one association to Project
	@ManyToOne
	@JoinColumn(name="MaProject")
	private Project project;

	public RealCost() {
	}

	public int getIdrealCost() {
		return this.idrealCost;
	}

	public void setIdrealCost(int idrealCost) {
		this.idrealCost = idrealCost;
	}

	public double getCost() {
		return this.cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

}