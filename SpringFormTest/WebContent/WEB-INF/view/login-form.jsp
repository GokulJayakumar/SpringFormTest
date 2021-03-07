<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
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
        
        
input[type=submit]{
	text-align: right;
 border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 13px;
  margin: 4px 2px;
  background-color: white; 
  color: black; 
  border: 2px solid SlateBlue;
  border-radius: 15px

}
        
    </style> 

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div align="center" style="margin-top: 10% ">
<h2>Login</h2>
<form:form action="checkEmployee" method="POST" modelAttribute="login" onsubmit="return validation()" name="regForm">
<form:hidden path="id" />
<table>
<tbody>
<tr>
<td><label>Username : </label></td>
<td><form:input path="username"/></td>
</tr>

<tr>
<td><label>Password : </label></td>
<td><form:input path="password"/></td>
</tr>

<tr>

<td colspan="2" align="center" ><input  type="submit" value="Login"></td>
</tr>

</tbody>

</table>

</form:form>
</div>
</body>
</html>