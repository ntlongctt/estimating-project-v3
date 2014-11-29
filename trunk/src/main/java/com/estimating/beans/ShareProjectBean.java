package com.estimating.beans;

import java.io.Serializable;

public class ShareProjectBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public ShareProjectBean() {
		// TODO Auto-generated constructor stub
	}

	private int maProject;
	private String share_user;
	private int idshare_project;
	private String own_user;
	private String projectName;
	private String type;
	private String description;

	public int getIdshare_project() {
		return idshare_project;
	}

	public void setIdshare_project(int idshare_project) {
		this.idshare_project = idshare_project;
	}

	public int getMaProject() {
		return maProject;
	}

	public void setMaProject(int maProject) {
		this.maProject = maProject;
	}

	public String getShare_user() {
		return share_user;
	}

	public void setShare_user(String share_user) {
		this.share_user = share_user;
	}

	public String getOwn_user() {
		return own_user;
	}

	public void setOwn_user(String own_user) {
		this.own_user = own_user;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


}
