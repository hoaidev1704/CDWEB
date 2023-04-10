package com.hlt.employeemanagement.model;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.springframework.format.annotation.DateTimeFormat;

public class Employee {
	private static final String FORMAT_BIRTH_DAY = "dd/MM/yyyy";
	private String id;
	private String name;
	private boolean male;
	private Date birthDay;
	private String address;
	private String phone;
	private Department department;
	private Title title;
	private long wageRate;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isMale() {
		return male;
	}
	public void setMale(boolean male) {
		this.male = male;
	}
	
	public Date getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public long getWageRate() {
		return wageRate;
	}
	public void setWageRate(long wageRate) {
		this.wageRate = wageRate;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public Title getTitle() {
		return title;
	}
	public void setTitle(Title title) {
		this.title = title;
	}
	
	public String getBirthDayForDisplay() {
		DateFormat df = new SimpleDateFormat(FORMAT_BIRTH_DAY);
		if(this.birthDay != null) {
			return df.format(birthDay);
		}
		return "";		
	}
	
}
