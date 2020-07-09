<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link href="${pageContext.request.contextPath}/loginSignup.css" rel="stylesheet"/>
<meta name ="viewport" content ="width=device-width, initial-scale=1.0">
</head>
<body >

<div class ="navBar"> 

 <a class="navItem" href ="/" > HOME</a> 
<a class="navItem" href = "/user/login/page"   > LOGIN </a>  
<a class="navItem" href = "/user/signup/page" > SIGN UP </a>  

</div> 


<div class="flexContainer">
<form method = "POST" action = "/user/login" id = "form" class="flexItem">

<label> Username: </label> <input type = "text" name = "username" required = "true" /><br> 

<label> Password:  </label><input type ="password" name = "password" required = "true"  /><br> 

<p> </p>

<input type ="submit" value ="LOGIN" class= "formSubmit"/>


</form>

</div>


</body>
</html>