package com.estimating.domain;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the user_type database table.
 * 
 */
@Entity
@Table(name="user_type")
@NamedQuery(name="UserType.findAll", query="SELECT u FROM UserType u")
public class UserType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int maUserType;

	private String moTa;

	//bi-directional many-to-one association to User
	@OneToMany(mappedBy="userType")
	private List<User> users;

	public UserType() {
	}

	public int getMaUserType() {
		return this.maUserType;
	}

	public void setMaUserType(int maUserType) {
		this.maUserType = maUserType;
	}

	public String getMoTa() {
		return this.moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public List<User> getUsers() {
		return this.users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public User addUser(User user) {
		getUsers().add(user);
		user.setUserType(this);

		return user;
	}

	public User removeUser(User user) {
		getUsers().remove(user);
		user.setUserType(null);

		return user;
	}

}