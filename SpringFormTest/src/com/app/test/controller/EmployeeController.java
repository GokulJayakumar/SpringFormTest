package com.app.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.app.test.entity.Employee;
import com.app.test.entity.Login;
import com.app.test.service.EmployeeService;



@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	
	@Autowired
	private EmployeeService employeeService;
	
	
	@RequestMapping(path="/list",method=RequestMethod.GET)
	public String listEmployees(Model theModel)
	{
		
		List<Employee> theEmployee = employeeService.getEmployees();
		theModel.addAttribute("employees", theEmployee);
		return "list-employees";
	}
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel)
	{
		//create a model atttribute to bind form data
		Employee theEmployee = new Employee();
		theModel.addAttribute("employee", theEmployee);
		return "employee-form";
		
	}
	
	@PostMapping("/saveEmployee")
	public String saveEmployee(@ModelAttribute("employee") Employee theEmployee,Model theModel)
	{
		//save the customer 
		employeeService.saveEmployee(theEmployee);
		theModel.addAttribute("employees", theEmployee);
		 return "redirect:/employee/list"; 
		
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("employeeId") int theId,Model theModel)
	{
		Employee theEmployee = employeeService.getEmployee(theId);
		theModel.addAttribute("employee",theEmployee);
		return "employee-form";
	}
	
	@GetMapping("/delete")
	public String deleteEmployee(@RequestParam("employeeId") int theId)
	{
		employeeService.deleteEmployee(theId);	
		return "deleteMsg";
	}

	@RequestMapping(path="/singleDetails")
	public String Sucess()
	{
		return "listById-employees";
	}
	
	
	
}
