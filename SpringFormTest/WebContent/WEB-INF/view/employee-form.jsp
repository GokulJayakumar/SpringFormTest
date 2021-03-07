<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function validation()
{
	if(document.regForm.username.value=="")
		{
			alert("Please enter your username");
			return false;
		}
	if(document.regForm.password.value=="")
	{
		alert("Please enter your password");
		return false;
	}
 	if((document.regForm.gender[0].checked==false)&&(document.regForm.gender[1].checked==false))
		{
			alert("Please select your gender");
			return false;
		}
 	
	if(document.regForm.country.selectedIndex==0)
		{
			alert("Please select your country");
			return false;
		}
	if(document.regForm.status.checked =="")
		{
			alert("Please Agree terms and condition");
			return false;
		} 
}
</script>

<style> 
        table, th, td   { 
				         font-family: Calibri; 
				 		 color:white; 
				 		 font-size: 11pt; 
				 		 font-style: normal;
				  	     background-color: SlateBlue; 
				         border: 1.5px solid white; 
				         border-collapse: collapse; 
       					} 
          
        th, td { 
         		   padding: 20px; 
       		 	} 
          
        th { 
            text-align: left; 
        	} 
          h2{
        color: SlateBlue;
        }
        
      input[type=submit] {
  
  border: none;
  color: white;
  padding: 8px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  margin: 4px 2px;
  background-color: white; 
  color: SlateBlue; 
  border: 2px solid SlateBlue;
   border-radius: 15px;
}
       
        
    </style> 


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
</head>

<body>
<div align="center" >
<h2>Register-Form</h2>
<br>

<form:form action="saveEmployee" method="POST" modelAttribute="employee" onsubmit="return validation()" name="regForm">
<form:hidden path="id" />
<table>
<tbody>
<tr>
<td><label>Username : </label></td>
<td><form:input path="username" /></td>
</tr>

<tr>
<td><label>Password : </label></td>
<td><form:input path="password" /></td>
</tr>

<tr>
<td><label> Gender : </label></td>
<td>
Male <form:radiobutton path="gender" value="Male" />
Female <form:radiobutton path="gender" value="Female" />
</td>
</tr>

<tr>
<td><label> Country : </label></td>
		<td>
		<form:select path="country" > 
		<form:option value="Select" label="Select" />  
        <form:option value="india" label="India" />  
        <form:option value="usa" label="USA" />  
        <form:option value="australia" label="Australia" />  
        </form:select>
        </td>
</tr>

<tr>
<td ><label> Agree terms and condition : </label><form:checkbox path="status" value="Accepted"   /></td>
<td><input type="submit" value="Save"></td>
</tr>



</tbody>

</table>
</form:form>

</div>
</body>
</html>