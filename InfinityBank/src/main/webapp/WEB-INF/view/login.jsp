<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link href="${pageContext.request.contextPath}/styles.css" rel="stylesheet"/>
</head>
<body>

 

<form method = "POST" action = "/user/login">

Username: <input type = "text" name = "username" required = "true"/><br> 

Password: <input type ="password" name = "password" required = "true" /><br> 

<input type ="submit" value ="login"/>


</form>



</body>
</html>