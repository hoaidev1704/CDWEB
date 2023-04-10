package com.hlt.employeemanagement.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.naming.directory.InvalidAttributesException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hlt.employeemanagement.model.Department;
import com.hlt.employeemanagement.model.Employee;
import com.hlt.employeemanagement.model.Title;
import com.hlt.employeemanagement.service.IEmployeeService;

@Controller
public class EmployeeController {
	@Autowired
	private IEmployeeService employeeService;
	
	@RequestMapping(method = RequestMethod.GET, path = "/dsnhanvien")
	public String loadAllEmployee(ModelMap modelMap) {
		List<Employee> employees = employeeService.getAllEmployee();
		modelMap.addAttribute("employees", employees);
		modelMap.addAttribute("removeIds", new ArrayList<String>());
		return "dsnhanvien";
	}
	
	@RequestMapping(method = RequestMethod.GET, path = "/chitietNhanVien")
	public String getAEmployee(ModelMap modelMap, @RequestParam(name = "id") String id) {
		Employee employee = employeeService.getAEmployee(id);
		modelMap.addAttribute("employee", employee);
		return "chitietNhanVien";
	}
	
	@RequestMapping(method = RequestMethod.GET, path = "/themnhanvien")
	public String loadAddEmployee(ModelMap modelMap) {
		modelMap.addAttribute("departments", Department.getAllDepartment());
		modelMap.addAttribute("employee", new Employee());
		modelMap.addAttribute("titles", Title.getAllTitle());
		return "themnhanvien";
	}
	
	@RequestMapping(method = RequestMethod.POST, path = "/themnhanvien")
	public String addEmployee(ModelMap modelMap, @ModelAttribute(name ="employee") Employee employee) {
		try {
			employeeService.addEmployee(employee);
			
		} catch (InvalidAttributesException e) {
			modelMap.addAttribute("errorMessage", e.getMessage());
			return "themnhanvien";
		}
		modelMap.addAttribute("employee", employee);
		return "chitietNhanVien";
	}
	
	@RequestMapping(method = RequestMethod.GET, path = "/suanhanvien")
	public String loadAddEmployee(ModelMap modelMap, @RequestParam(name ="id") String id) {
		modelMap.addAttribute("departments", Department.getAllDepartment());
		modelMap.addAttribute("employee", employeeService.getAEmployee(id));
		modelMap.addAttribute("titles", Title.getAllTitle());
		return "suanhanvien";
	}
	
	@RequestMapping(method = RequestMethod.POST, path = "/suanhanvien")
	public String updateEmployee(ModelMap modelMap, @ModelAttribute(name ="employee") Employee employee) {
		try {
			employeeService.updateEmployee(employee);
		} catch (InvalidAttributesException e) {
			modelMap.addAttribute("errorMessage", e.getMessage());
			return "suanhanvien";
		}
		modelMap.addAttribute("employee", employee);
		return "chitietNhanVien";
	}
	
	@RequestMapping(method = RequestMethod.POST, path = "/xoanhanvien", headers="Content-Type=application/json")
	public String removeEmployees(ModelMap modelMap, @RequestBody String string) {
		
		return "dsnhanvien";
	}
}
