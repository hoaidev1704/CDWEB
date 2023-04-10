package com.hlt.employeemanagement.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.naming.directory.InvalidAttributesException;

import org.springframework.stereotype.Service;

import com.hlt.employeemanagement.model.Department;
import com.hlt.employeemanagement.model.Employee;
import com.hlt.employeemanagement.model.Title;

@Service
public class EmployeeService implements IEmployeeService {
	private List<Employee> employees = new ArrayList<>();
	private static final EmployeeService employeeService = new EmployeeService();
	
	private EmployeeService() {
		init();
	}
	
	private void init() {
		Employee employee = new Employee();
		employee.setId("1");
		employee.setMale(true);
		employee.setName("Le Thanh Hoai");
		employee.setPhone("0123123123");
		LocalDate date = LocalDate.of(1997, 4, 17);
		employee.setBirthDay(java.sql.Date.valueOf(date));
		employee.setTitle(Title.TP);
		employee.setDepartment(Department.KTV);
		employees.add(employee);
	}
	
	
	@Override
	public List<Employee> getAllEmployee() {
		return employees;
	}

	@Override
	public Employee getAEmployee(String id) {
		return employees.stream().filter(em -> em.getId().equals(id)).findFirst().orElse(null);
	}

	@Override
	public void addEmployee(Employee employee) throws InvalidAttributesException {
		if(isEmployeeExits(employee.getId())) {
			throw new InvalidAttributesException("Employee id: " + employee.getId() + " already exits");
		}
		employees.add(employee);
	}

	@Override
	public void updateEmployee(Employee employee) throws InvalidAttributesException {
		if(!isEmployeeExits(employee.getId())) {
			throw new InvalidAttributesException("Employee id: " + employee.getId() + "does not exits");
		}
		int index = employees.stream().map(Employee::getId).collect(Collectors.toList()).indexOf(employee.getId());
		employees.remove(index);
		employees.add(index, employee);
	}

	@Override
	public boolean isEmployeeExits(String employeeId) {
		return employees.stream().anyMatch(em -> em.getId().equals(employeeId));
	}

}
