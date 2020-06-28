<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>profile</title>
<link href="styles.css" rel="stylesheet"/>
</head>
<body>

 Welcome ${User.getUsername() }  <br>

<p>

<div class = "account">

Primary Account <br> 
Account Number: ${ User.getPrimaryAccount().getAccountNumber()} <br> 
Account Balance: ${User.getPrimaryAccount().getBalance()} <br> 
<form:form method = "POST" action = "${request.getContextPath()}/primaryTransaction" modelAttribute = "ProfileUserId">
<form:hidden path = "userId" value="${User.getUserId()}" /><br> 
<input type ="submit" value ="Primary Transaction History"/>
</form:form>
</div>

<p> 

<div class = "account">

Savings Account <br>

Account Number: ${User.getSavingsAccount().getAccountNumber()} <br> 
Account Balance: ${User.getSavingsAccount().getBalance() } <br> 
<form:form method = "POST" action = "${request.getContextPath()}/savingsTransaction" modelAttribute = "ProfileUserId">
<form:hidden path = "userId" value="${User.getUserId()}" /><br> 
<input type ="submit" value ="Savings Transaction History"/>
</form:form>
</div>



<form:form method = "POST" action = "${request.getContextPath()}/transferBetweenAccounts" modelAttribute = "ProfileUserId">
<form:hidden path = "userId" value="${User.getUserId()}" /><br> 
<input type ="submit" value ="Transfer"/>
</form:form>


<form:form method = "POST" action = "${request.getContextPath()}/ATM" modelAttribute = "ProfileUserId">
<form:hidden path = "userId" value="${User.getUserId()}" /><br> 
<input type ="submit" value ="Deposit/Withdraw"/>
</form:form>



<form method="post" action = "/user/logout">

<input type ="hidden" name="status" value="destroy"> 
<input type ="submit" value ="logout"> 

</form>



</body>
</html>