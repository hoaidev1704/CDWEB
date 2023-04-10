package com.hlt.employeemanagement.model;

import java.util.Arrays;
import java.util.List;

public enum Title {
	NV, GD, TP, PGD, PP;

	public static List<Title> getAllTitle() {
		return Arrays.asList(NV, GD, TP, PGD, PP);
	}
}
