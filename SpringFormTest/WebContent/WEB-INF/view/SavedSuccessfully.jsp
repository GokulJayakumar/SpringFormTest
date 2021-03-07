<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



 <style> 
        table, th, td ,a  { 
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
        
         h3{
        color: SlateBlue;
        }
        
        span
        {
        font-family: Calibri;
        font-size: 25pt; 
  		font-style: normal;
 		font-weight: bold; 
        color: black;
        }
        
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

}
        
    </style>


<title>Customers List</title>
</head>
<body>


   

<br>
<div align="center">

</div>

<!-- style="margin-top: 4.5% " -->


<div align="center" >

    <table style="width:75%; align-content: center;"> 
     <h2 align="center">DETAILS</h2>
<tr>
<th>Username</th>
<th>Password</th>
<th>Gender</th>
<th>Country</th>
<th>Status</th>

</tr>
<c:forEach var="tempEmployee" items="${employees}">



<tr>
<td>${tempEmployee.username}</td>
<td>${tempEmployee.password}</td>
<td>${tempEmployee.gender}</td>
<td>${tempEmployee.country}</td>
<td>${tempEmployee.status}</td>

</tr>
</c:forEach>
</table>
</div>

</body>
</html>