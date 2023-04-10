package com.example.dattour.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class CustomerForm {
	private String name;
	private String address;
	private String email;
	private String phone;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date startDate;
	private int numberAdults;
	private int numberChildren;
	
	private long tourId;
	
	public String getName () {
		return name;
	}
	
	public void setName (String name) {
		this.name = name;
	}
	
	public String getAddress () {
		return address;
	}
	
	public void setAddress (String address) {
		this.address = address;
	}
	
	public String getEmail () {
		return email;
	}
	
	public void setEmail (String email) {
		this.email = email;
	}
	
	public String getPhone () {
		return phone;
	}
	
	public void setPhone (String phone) {
		this.phone = phone;
	}
	
	public Date getStartDate () {
		return startDate;
	}
	
	public void setStartDate (Date startDate) {
		this.startDate = startDate;
	}
	
	public int getNumberAdults () {
		return numberAdults;
	}
	
	public void setNumberAdults (int numberAdults) {
		this.numberAdults = numberAdults;
	}
	
	public int getNumberChildren () {
		return numberChildren;
	}
	
	public void setNumberChildren (int numberChildren) {
		this.numberChildren = numberChildren;
	}
	
	public long getTourId () {
		return tourId;
	}
	
	public void setTourId (long tourId) {
		this.tourId = tourId;
	}
}
