package com.aashdit.interview.gyame.service;

import java.util.List;

import com.aashdit.interview.gyame.model.Address;
import com.aashdit.interview.gyame.model.Employee;

public interface EmployeeService {

	List<Employee> getAllEmployees();
	
	Employee getEmployee(Long employeeId);
	
	Employee saveEmployee(Employee employee);
	
	Address saveAddress(Address address);
	
	Address getAddress(Long addressId);
}
