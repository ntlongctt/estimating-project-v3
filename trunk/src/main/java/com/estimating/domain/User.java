package com.estimating.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 
 * @author ChíTâm
 *
 */
@Entity
@Table(name = "users")
@NamedQuery(name = "User.findAll", query = "SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int maUser;

	private String cmnd;

	private String hoTen;

	private String mail;

	private String pass;

	private String phone;

	private float taiKhoan;

	private String tenUser;

	// bi-directional many-to-one association to Project
	@OneToMany(mappedBy = "user")
	private List<Project> projects;

	// bi-directional many-to-one association to Role
	@ManyToOne
	@JoinColumn(name = "MaRole")
	private Role role;

	public User() {
	}

	public int getMaUser() {
		return this.maUser;
	}

	public void setMaUser(int maUser) {
		this.maUser = maUser;
	}

	public String getCmnd() {
		return this.cmnd;
	}

	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}

	public String getHoTen() {
		return this.hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getMail() {
		return this.mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public float getTaiKhoan() {
		return this.taiKhoan;
	}

	public void setTaiKhoan(float taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

	public String getTenUser() {
		return this.tenUser;
	}

	public void setTenUser(String tenUser) {
		this.tenUser = tenUser;
	}

	public List<Project> getProjects() {
		return this.projects;
	}

	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}

	public Project addProject(Project project) {
		getProjects().add(project);
		project.setUser(this);

		return project;
	}

	public Project removeProject(Project project) {
		getProjects().remove(project);
		project.setUser(null);

		return project;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

}