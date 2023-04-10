package com.example.studentmanagement.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Table(name = "product_type")
@Data
@Getter
@Setter
public class ProductType extends BusinessObject{
	@Column(name = "TYPE_NAME")
	private String typeName;
	@Column(name = "DESC")
	private String description;
}
