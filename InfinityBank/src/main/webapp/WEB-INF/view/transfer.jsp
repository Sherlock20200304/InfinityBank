<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>transfer</title>
<link href="${pageContext.request.contextPath}/transaction.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/profileHeader.css" rel="stylesheet"/>
<meta name ="viewport" content ="width=device-width, initial-scale=1.0">
</head>
<body >

<ul class="navBar">
		<li><form:form method="POST"
				action="${request.getContextPath()}/nav/home"
				modelAttribute="ProfileUserId" class="transactionHistoryForm">
				<form:hidden path="userId" value="${User.getUserId()}" />
				<input type="submit" value="Home" class="button" />
			</form:form></li>

		<li>Accounts
			<ul>
				<li><form:form method="POST"
						action="${request.getContextPath()}/primaryTransaction"
						modelAttribute="ProfileUserId" class="transactionHistoryForm">
						<form:hidden path="userId" value="${User.getUserId()}" />
						<input type="submit" value="Primary Transaction History"
							class="button" />
					</form:form></li>
				<li><form:form method="POST"
						action="${request.getContextPath()}/savingsTransaction"
						modelAttribute="ProfileUserId" class="transactionHistoryForm">
						<form:hidden path="userId" value="${User.getUserId()}" />
						<input type="submit" value="Savings Transaction History"
							class="button" />
					</form:form></li>
			</ul>

		</li>

		<li>Transactions
			<ul>
				<li><form:form method="POST"
						action="${request.getContextPath()}/transferBetweenAccounts"
						modelAttribute="ProfileUserId" class="operationForm">
						<form:hidden path="userId" value="${User.getUserId()}" />
						<input type="submit" value="Transfer" class="button" />
					</form:form></li>
				<li><form:form method="POST"
						action="${request.getContextPath()}/ATM"
						modelAttribute="ProfileUserId" class="operationForm">
						<form:hidden path="userId" value="${User.getUserId()}" />
						<input type="submit" value="Deposit/Withdraw" class="button" />
					</form:form></li>
			</ul>
		</li>

		<li><form method="post" action="/user/logout">

				<input type="hidden" name="status" value="destroy"> <input
					type="submit" value="logout">

			</form></li>

	</ul>


<div class="flexContainer">


<div class="flexItem">
<h1 >Transfer</h1>
</div>


<div class="flexItem">
<form:form action ="${request.getContextPath()} /transferOperation" modelAttribute = "Info" method ="POST">

Transfer To: 

<form:select path="transferTo" required = "true">  
        <form:option value="primaryAccount" label="Primary Account"/>  
        <form:option value="savingsAccount" label="Savings Account"/>   
        </form:select> <br> 
        
Transfer From: <form:select path="transferFrom" required = "true">  
        <form:option value="primaryAccount" label="Primary Account"/>  
        <form:option value="savingsAccount" label="Savings Account"/>   
        </form:select> <br> 
        
Amount: <form:input path ="amount" required = "true"/><br>
<form:hidden path="userId" value = "${ProfileUserId.getUserId()} "/>

<input type = "submit" value ="Make transaction" class= "formSubmit"> 

</form:form>
</div>
</div>


</body>
</html>