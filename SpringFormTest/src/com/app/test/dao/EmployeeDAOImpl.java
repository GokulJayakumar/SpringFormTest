package com.app.test.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;


import com.app.test.entity.Employee;
import com.app.test.entity.Login;
import com.app.test.service.EmployeeService;


@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Employee> getEmployees() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Employee> theQuery = currentSession.createQuery("from Employee",Employee.class);
		List<Employee> employees = theQuery.getResultList();
		return employees;
	}

	@Override
	public void saveEmployee(Employee theEmployee) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theEmployee);	
	}
	
	

	@Override
	public List<Employee> validateUser1(Login login) {
	
		Session currentSession = sessionFactory.getCurrentSession();
		Query <Employee> theQuery = currentSession.createQuery("from Employee h where h.username = :USERNAME and h.password= :PASSWORD",Employee.class);
		theQuery.setParameter("USERNAME",login.getUsername() );
		theQuery.setParameter("PASSWORD", login.getPassword());
		List<Employee> employees = theQuery.getResultList();
		return employees.size()>0?employees:null;
	}

	@Override
	public Employee getEmployee(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Employee theEmployee = currentSession.get(Employee.class, theId);	
		return theEmployee;
	}

	@Override
	public void deleteEmployee(int theId) {
		
				Session currentSession = sessionFactory.getCurrentSession();
				Employee theEmployee = currentSession.byId(Employee.class).load(theId);
				currentSession.delete(theEmployee);
		
	}

	

		
	}


	
	

	


