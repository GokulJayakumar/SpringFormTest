<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
input[type=button]{
	text-align: right;
 border: none;
  color: white;
  padding: 8px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  background-color: white; 
  color: SlateBlue; 
  border: 2px solid SlateBlue;

}</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <input type="button" value="Register Customer" 
onclick="window.location.href='employee/showFormForAdd';  return false;" />

 <input type="button" value="View Customer List" 
onclick="window.location.href='employee/list';  return false;" />

 <input type="button" value="login" 
onclick="window.location.href='employeelogin/showlogin';  return false;" />
 <%-- <% response.sendRedirect("employee/list"); %> --%>
</body>
</html>