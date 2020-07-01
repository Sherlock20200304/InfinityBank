<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>profile</title>

<link href="${pageContext.request.contextPath}/profile.css" rel="stylesheet"/>
</head>
<body>

  <h1> Welcome ${User.getUsername() } </h1> <br>

<p>

<div class = "box">

<h2> Primary Account </h2><br> 
<h3> Account Number: ${ User.getPrimaryAccount().getAccountNumber()} </h3> <br> 
<h3> Account Balance: ${User.getPrimaryAccount().getBalance()} </h3> <br> 
<form:form method = "POST" action = "${request.getContextPath()}/primaryTransaction" modelAttribute = "ProfileUserId" class ="transactionHistoryForm">
<form:hidden path = "userId" value="${User.getUserId()}" /><br> 
<input type ="submit" value ="Primary Transaction History" class = "button"/>
</form:form>
</div>

<p> 

<div class = "box">

<h2> Savings Account  </h2><br>

<h3> Account Number: ${User.getSavingsAccount().getAccountNumber()} </h3><br> 
<h3> Account Balance: ${User.getSavingsAccount().getBalance() } </h3><br> 
<form:form method = "POST" action = "${request.getContextPath()}/savingsTransaction" modelAttribute = "ProfileUserId" class ="transactionHistoryForm">
<form:hidden path = "userId" value="${User.getUserId()}" /><br> 
<input type ="submit" value ="Savings Transaction History" class = "button"/>
</form:form>
</div>

<h2> Make a Transaction</h2>

<div class = "box">

<form:form method = "POST" action = "${request.getContextPath()}/transferBetweenAccounts" modelAttribute = "ProfileUserId" class ="operationForm">
<form:hidden path = "userId" value="${User.getUserId()}" /><br> 
<input type ="submit" value ="Transfer" class = "button"/>
</form:form>


<form:form method = "POST" action = "${request.getContextPath()}/ATM" modelAttribute = "ProfileUserId" class ="operationForm">
<form:hidden path = "userId" value="${User.getUserId()}" /><br> 
<input type ="submit" value ="Deposit/Withdraw" class = "button"/>
</form:form>

</div >

<form method="post" action = "/user/logout" >

<input type ="hidden" name="status" value="destroy"> 
<input type ="submit" value ="logout" class= "formSubmit"> 

</form>



</body>
</html>