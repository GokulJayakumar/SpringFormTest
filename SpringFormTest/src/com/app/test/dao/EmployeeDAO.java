package com.app.test.dao;

import java.util.List;

import com.app.test.entity.Employee;
import com.app.test.entity.Login;




public interface EmployeeDAO {
	public List<Employee> getEmployees();
	public void saveEmployee(Employee theEmployee);
	public List<Employee> validateUser1(Login login);	
	public Employee getEmployee(int theId);
	public void deleteEmployee(int theId);
	
}
