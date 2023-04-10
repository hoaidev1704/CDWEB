package com.example.studentmanagement.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Table
@Data
@Getter
@Setter
public class Product extends BusinessObject {
	@Column(name = "PRODUCT_NAME")
	private String productName;
	@Column(name = "DESC")
	private String description;
	@ManyToOne(fetch = FetchType.LAZY)
	@Column(name = "PRODUCT_TYPE_ID")
	private ProductType productType;
	@ManyToOne(fetch = FetchType.LAZY)
	@Column(name = "COMPANY_ID")
	private Company company;
}
