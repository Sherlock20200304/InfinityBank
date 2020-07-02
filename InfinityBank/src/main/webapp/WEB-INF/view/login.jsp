<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link href="${pageContext.request.contextPath}/loginSignup.css" rel="stylesheet"/>
</head>
<body class="flexContainer">




<form method = "POST" action = "/user/login" id = "form" class="flexItem">

<label> Username: </label> <input type = "text" name = "username" required = "true" /><br> 

<label> Password:  </label><input type ="password" name = "password" required = "true"  /><br> 

<p> </p>

<input type ="submit" value ="LOGIN" class= "formSubmit"/>


</form>




</body>
</html>