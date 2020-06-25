<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="styles.css" rel="stylesheet"/>
<title>ATM</title>

</head>
<body>

You can deposit and withdraw money here. <br>

<form:form action ="${request.getContextPath()}/atmOperation" modelAttribute = "Atm" method ="POST">


Deposit or Withdraw: 
<form:select path="type">  
        <form:option value="deposit" label="Deposit"/>  
        <form:option value="withdraw" label="Withdraw"/>   
        </form:select>  <br>
        

Primary Account or Savings Account: 
<form:select path="account">  
        <form:option value="primaryAccount" label="Primary Account"/>  
        <form:option value="savingsAccount" label="Savings Account"/>   
        </form:select> <br> 

Amount: <form:input path ="amount"/><br>
<form:hidden path="userId" value = "${ProfileFormInfo.getUserId()} "/>
<input type = "submit" value ="Make transaction!"> 

</form:form>

</body>
</html>