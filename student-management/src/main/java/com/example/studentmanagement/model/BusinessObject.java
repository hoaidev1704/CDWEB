package com.example.studentmanagement.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.UUID;

@MappedSuperclass
@Setter
public abstract class BusinessObject  {
	@Column(name ="ID")
	@GeneratedValue
	protected UUID id;
	@Embedded
	protected AuditInfo auditInfo;
	
	public AuditInfo getAuditInfo() {
		if(auditInfo == null) {
			auditInfo = new AuditInfo();
		}
		return auditInfo;
	}
}
