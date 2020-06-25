<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link href="styles.css" rel="stylesheet"/>
</head>
<body>

This login page. <br> 

<form method = "POST" action = "/user/login">

Username: <input type = "text" name = "username"/><br> 

Password: <input type ="text" name = "password" /><br> 

<input type ="submit" value ="login"/>


</form>



</body>
</html>