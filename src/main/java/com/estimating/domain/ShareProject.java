package com.estimating.domain;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the share_project database table.
 * 
 */
@Entity
@Table(name="share_project")
@NamedQuery(name="ShareProject.findAll", query="SELECT s FROM ShareProject s")
public class ShareProject implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="idshare_project")
	private int idshareProject;

	//bi-directional many-to-one association to Project
	@ManyToOne
	@JoinColumn(name="MaProject")
	private Project project;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="own_user")
	private User user1;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="share_user")
	private User user2;

	public ShareProject() {
	}

	public int getIdshareProject() {
		return this.idshareProject;
	}

	public void setIdshareProject(int idshareProject) {
		this.idshareProject = idshareProject;
	}

	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public User getUser1() {
		return this.user1;
	}

	public void setUser1(User user1) {
		this.user1 = user1;
	}

	public User getUser2() {
		return this.user2;
	}

	public void setUser2(User user2) {
		this.user2 = user2;
	}

}