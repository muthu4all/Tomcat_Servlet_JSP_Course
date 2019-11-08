package com.muthu4all;

import java.io.Serializable;

public class MyBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2060171850100607730L;
	private String username;
	private float salary;
	private int age;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public float getSalary() {
		return salary;
	}
	public void setSalary(float salary) {
		this.salary = salary;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}
