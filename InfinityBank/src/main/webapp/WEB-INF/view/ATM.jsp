<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/transaction.css" rel="stylesheet"/>
<title>ATM</title>
<meta name ="viewport" content ="width=device-width, initial-scale=1.0">
</head>
<body class = "flexContainer">

<div class="flexItem">
<h1 > Deposit / Withdraw</h1>  
</div>

<div class="flexItem">
<form:form action ="${request.getContextPath()}/atmOperation" modelAttribute = "Atm" method ="POST">


Deposit or Withdraw: 
<form:select path="type" required = "true">  
        <form:option value="deposit" label="Deposit"/>  
        <form:option value="withdraw" label="Withdraw"/>   
        </form:select>  <br>
        

Account:
<form:select path="account" required = "true">  
        <form:option value="primaryAccount" label="Primary Account"/>  
        <form:option value="savingsAccount" label="Savings Account"/>   
        </form:select> <br> 

 Amount: <form:input path ="amount" required = "true"/><br>
<form:hidden path="userId" value = "${ProfileFormInfo.getUserId()} "/>
<input type = "submit" value ="Make transaction" class= "formSubmit"> 

</form:form>
</div>

</body>
</html>