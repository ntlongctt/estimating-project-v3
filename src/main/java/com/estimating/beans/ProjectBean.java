package com.estimating.beans;

import java.io.Serializable;

public class ProjectBean implements Serializable {
	private static final long serialVersionUID = -4672882863251516298L;

	private String name;
	private String type;
	private String description;
	private int projectID;
	private int owner; 

	public int getOwner() {
		return owner;
	}

	public void setOwner(int owner) {
		this.owner = owner;
	}

	public int getProjectID() {
		return projectID;
	}

	public void setProjectID(int projectID) {
		this.projectID = projectID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
