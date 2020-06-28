<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
<link href="${pageContext.request.contextPath}/styles.css" rel="stylesheet"/>
</head>
<body>


<form:form method = "POST" action = "/user/signup/adduser" modelAttribute = "user">

Frist Name: <form:input path = "firstName" required = "true" /><br> 

Last Name: <form:input path = "lastName" required = "true" /><br> 

Username: <form:input path = "username" required = "true" /><br> 

Password: <form:password path = "password" required = "true" /><br> 

Email: <form:input path = "email" required = "true" /><br> 

Phone Number: <form:input path = "phone" required = "true" /><br> 

<input type ="submit" value ="Sign up!"/>


</form:form>

</body>
</html>