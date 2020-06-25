<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
<link href="styles.css" rel="stylesheet"/>
</head>
<body>

Hello Signup. 

<form:form method = "POST" action = "/user/signup/adduser" modelAttribute = "user">

Frist Name: <form:input path = "firstName" /><br> 

Last Name: <form:input path = "lastName" /><br> 

Username: <form:input path = "username" /><br> 

Password: <form:input path = "password" /><br> 

Email: <form:input path = "email" /><br> 

Phone Number: <form:input path = "phone" /><br> 

<input type ="submit" value ="Sign up!"/>


</form:form>

</body>
</html>