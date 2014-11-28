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
 * The persistent class for the users database table.
 * 
 */
@Entity
@Table(name="users")
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String username;

	private String diaChi;

	private String hoTen;

	private String mail;

	private String password;

	private String phone;

	//bi-directional many-to-one association to Project
	@OneToMany(mappedBy="user")
	private List<Project> projects;

	//bi-directional many-to-one association to ShareProject
	@OneToMany(mappedBy="user1")
	private List<ShareProject> shareProjects1;

	//bi-directional many-to-one association to ShareProject
	@OneToMany(mappedBy="user2")
	private List<ShareProject> shareProjects2;

	//bi-directional many-to-one association to Role
	@ManyToOne
	@JoinColumn(name="MaRole")
	private Role role;

	//bi-directional many-to-one association to UserType
	@ManyToOne
	@JoinColumn(name="MaUserType")
	private UserType userType;

	public User() {
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getDiaChi() {
		return this.diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
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

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

	public List<ShareProject> getShareProjects1() {
		return this.shareProjects1;
	}

	public void setShareProjects1(List<ShareProject> shareProjects1) {
		this.shareProjects1 = shareProjects1;
	}

	public ShareProject addShareProjects1(ShareProject shareProjects1) {
		getShareProjects1().add(shareProjects1);
		shareProjects1.setUser1(this);

		return shareProjects1;
	}

	public ShareProject removeShareProjects1(ShareProject shareProjects1) {
		getShareProjects1().remove(shareProjects1);
		shareProjects1.setUser1(null);

		return shareProjects1;
	}

	public List<ShareProject> getShareProjects2() {
		return this.shareProjects2;
	}

	public void setShareProjects2(List<ShareProject> shareProjects2) {
		this.shareProjects2 = shareProjects2;
	}

	public ShareProject addShareProjects2(ShareProject shareProjects2) {
		getShareProjects2().add(shareProjects2);
		shareProjects2.setUser2(this);

		return shareProjects2;
	}

	public ShareProject removeShareProjects2(ShareProject shareProjects2) {
		getShareProjects2().remove(shareProjects2);
		shareProjects2.setUser2(null);

		return shareProjects2;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public UserType getUserType() {
		return this.userType;
	}

	public void setUserType(UserType userType) {
		this.userType = userType;
	}

}