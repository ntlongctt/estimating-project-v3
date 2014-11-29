package com.estimating.beans;

import java.io.Serializable;

public class UserBean implements Serializable {
	private static final long serialVersionUID = 1L;
	public UserBean() {
		super();
	}
	
	private String username;
	private String pass;
	private String npass;
	public String getNpass() {
		return npass;
	}

	public void setNpass(String npass) {
		this.npass = npass;
	}

	private String fullname;
	private String mail;
	private String phone;
	private String address;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String adddress) {
		this.address = adddress;
	}
}
