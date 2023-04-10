package com.example.studentmanagement.model;

import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Table
public class Company extends BusinessObject {
	@Column(name = "NAME")
	private String name;
	@Column(name = "DESC")
	private String description;
	@Column(name = "STATUS")
	private CompanyStatus status;
	
}
