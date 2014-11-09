package com.estimating.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 
 * @author ChíTâm
 *
 */
@Entity
@Table(name = "project_types")
@NamedQuery(name = "ProjectType.findAll", query = "SELECT p FROM ProjectType p")
public class ProjectType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int maLoaiProject;

	private String moTa;

	private String tenLoaiProject;

	// bi-directional many-to-one association to Project
	@OneToMany(mappedBy = "projectType")
	private List<Project> projects;

	public ProjectType() {
	}

	public int getMaLoaiProject() {
		return this.maLoaiProject;
	}

	public void setMaLoaiProject(int maLoaiProject) {
		this.maLoaiProject = maLoaiProject;
	}

	public String getMoTa() {
		return this.moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getTenLoaiProject() {
		return this.tenLoaiProject;
	}

	public void setTenLoaiProject(String tenLoaiProject) {
		this.tenLoaiProject = tenLoaiProject;
	}

	public List<Project> getProjects() {
		return this.projects;
	}

	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}

	public Project addProject(Project project) {
		getProjects().add(project);
		project.setProjectType(this);

		return project;
	}

	public Project removeProject(Project project) {
		getProjects().remove(project);
		project.setProjectType(null);

		return project;
	}

}