package com.app.test.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.app.test.dao.EmployeeDAO;
import com.app.test.entity.Employee;
import com.app.test.entity.Login;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDAO employeeDAO;
	
	
	
	@Override
	@Transactional
	public List<Employee> getEmployees() {
		// TODO Auto-generated method stub
		return employeeDAO.getEmployees();
	}

	@Override
	@Transactional
	public void saveEmployee(Employee theEmployee) {
		// TODO Auto-generated method stub
		employeeDAO.saveEmployee(theEmployee);
	}


	@Override
	@Transactional
	public List<Employee> validateUser1(Login login) {
		// TODO Auto-generated method stub
		return employeeDAO.validateUser1(login);
	}

	@Override
	@Transactional
	public Employee getEmployee(int theId) {
		// TODO Auto-generated method stub
		return employeeDAO.getEmployee(theId);
	}

	@Override
	@Transactional
	public void deleteEmployee(int theId) {
		// TODO Auto-generated method stub
		employeeDAO.deleteEmployee(theId);
	}

	

}
