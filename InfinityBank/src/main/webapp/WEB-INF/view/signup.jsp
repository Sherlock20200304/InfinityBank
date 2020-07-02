<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
<link href="${pageContext.request.contextPath}/loginSignup.css" rel="stylesheet"/>
</head>
<body class="flexContainer">


<form:form method = "POST" action = "/user/signup/adduser" modelAttribute = "user" class="flexItem">

<label> Frist Name: </label> <form:input path = "firstName" required = "true"  /><br> 

<label> Last Name: </label>  <form:input path = "lastName" required = "true" /><br> 

<label> Username:</label>  <form:input path = "username" required = "true"  /><br> 
<label> Password: </label> <form:password path = "password" required = "true" /><br> 

 <label>Email:  </label><form:input path = "email" required = "true" /><br> 

<label>  Phone Number:</label> <form:input path = "phone" required = "true" /><br> 

<p> </p>

<input type ="submit" value ="SIGN UP" class= "formSubmit"/>


</form:form>


</body>
</html>