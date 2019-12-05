package com.muthu4all;

import java.io.Serializable;

public class MyUserBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5043157082793900685L;
	
	private int userid;
	private String firstname;
	private String lastname;
	private int age;
	private String position;
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
}
