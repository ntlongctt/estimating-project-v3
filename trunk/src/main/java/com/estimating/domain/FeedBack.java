package com.estimating.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * 
 * 
 * @author ChíTâm
 *
 */
@Entity
@Table(name = "feed_back")
@NamedQuery(name = "FeedBack.findAll", query = "SELECT f FROM FeedBack f")
public class FeedBack implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int maFeedBack;

	private String noidung;

	// bi-directional many-to-one association to Project
	@ManyToOne
	@JoinColumn(name = "MaProject")
	private Project project;

	public FeedBack() {
	}

	public int getMaFeedBack() {
		return this.maFeedBack;
	}

	public void setMaFeedBack(int maFeedBack) {
		this.maFeedBack = maFeedBack;
	}

	public String getNoidung() {
		return this.noidung;
	}

	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}

	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

}