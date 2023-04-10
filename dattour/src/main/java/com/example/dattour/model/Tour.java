package com.example.dattour.model;

public class Tour {
	private long id;
	private String description;
	private String days;
	private String transportation;
	private String departureSchedule;
	private double price;
	
	public Long getId () {
		return id;
	}
	
	public String getDescription () {
		return description;
	}
	
	public String getDays () {
		return days;
	}
	
	public String getTransportation () {
		return transportation;
	}
	
	public String getDepartureSchedule () {
		return departureSchedule;
	}
	
	public double getPrice () {
		return price;
	}
	
	public void setId (long id) {
		this.id = id;
	}
	
	public void setDescription (String description) {
		this.description = description;
	}
	
	public void setDays (String days) {
		this.days = days;
	}
	
	public void setTransportation (String transportation) {
		this.transportation = transportation;
	}
	
	public void setDepartureSchedule (String departureSchedule) {
		this.departureSchedule = departureSchedule;
	}
	
	public void setPrice (double price) {
		this.price = price;
	}
}
