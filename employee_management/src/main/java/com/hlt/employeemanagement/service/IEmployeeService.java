package com.hlt.employeemanagement.service;

import java.util.List;

import javax.naming.directory.InvalidAttributesException;

import com.hlt.employeemanagement.model.Employee;

public interface IEmployeeService {
	List<Employee> getAllEmployee();
	Employee getAEmployee(String id);
	void addEmployee (Employee employee) throws InvalidAttributesException;
	void updateEmployee(Employee employee)  throws InvalidAttributesException;
	boolean isEmployeeExits(String employeeId);
}
