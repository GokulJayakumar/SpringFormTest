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

import com.app.test.entity.Employee;
import com.app.test.entity.Login;
import com.app.test.service.EmployeeService;

@Controller
@RequestMapping("/employeelogin")
public class LoginController {
	
	@Autowired
	private EmployeeService employeeService;
	
	
	@GetMapping("/showlogin")
	public String showLogin(Model theModel)
	{
		//create a model atttribute to bind form data
		Login login = new Login();
		theModel.addAttribute("login", login);
		return "login-form";
	
	}
	
	@PostMapping("/checkEmployee")
	public String checkEmployee(@ModelAttribute("login") Login login,Model theModel)
	{

			
			if(employeeService.validateUser1(login)!=null)
			{
				List<Employee> theEmployee = employeeService.validateUser1(login);
				theModel.addAttribute("employee", theEmployee);

			return "listById-employees";
		}
		 return "redirect:/employeelogin/error";
		
	}
	
	@RequestMapping(path="/error")
	public String Error()
	{
		return "invalidCredentials";
	}

}
