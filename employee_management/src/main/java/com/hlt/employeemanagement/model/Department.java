package com.hlt.employeemanagement.model;

import java.util.Arrays;
import java.util.List;

public enum Department {
	BGD,
	KTV,
	SX,
	KHTV;
	
	public static List<Department> getAllDepartment() {
		return Arrays.asList(BGD,KTV,SX,KHTV);
	}
}
