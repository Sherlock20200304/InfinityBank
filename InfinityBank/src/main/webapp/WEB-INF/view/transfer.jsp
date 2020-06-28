<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>transfer</title>
<link href="${pageContext.request.contextPath}/styles.css" rel="stylesheet"/>
</head>
<body>
You can transfer money here. 

<form:form action ="${request.getContextPath()} /transferOperation" modelAttribute = "Info" method ="POST">

Transfer To: 

<form:select path="transferTo">  
        <form:option value="primaryAccount" label="Primary Account"/>  
        <form:option value="savingsAccount" label="Savings Account"/>   
        </form:select> <br> 
        
Transfer From: <form:select path="transferFrom">  
        <form:option value="primaryAccount" label="Primary Account"/>  
        <form:option value="savingsAccount" label="Savings Account"/>   
        </form:select> <br> 
        
Amount: <form:input path ="amount"/><br>
<form:hidden path="userId" value = "${ProfileFormInfo.getUserId()} "/>

<input type = "submit" value ="Make transaction!"> 

</form:form>

</body>
</html>