<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Primary Transaction History</title>
<link href="${pageContext.request.contextPath}/table.css" rel="stylesheet"/>
<meta name ="viewport" content ="width=device-width, initial-scale=1.0">
</head>
<body>


<ul class="navBar">
<li> 

<form:form method = "POST" action = "${request.getContextPath()}/nav/home" modelAttribute = "ProfileUserId" class ="transactionHistoryForm">
<form:hidden path = "userId" value="${ProfileUserId.getUserId()}" />
<input type ="submit" value ="Home" class = "button"/>
</form:form>

</li>

<li>Accounts 
<ul> 
<li><form:form method = "POST" action = "${request.getContextPath()}/primaryTransaction" modelAttribute = "ProfileUserId" class ="transactionHistoryForm">
<form:hidden path = "userId" value="${ProfileUserId.getUserId()}" />
<input type ="submit" value ="Primary" class = "button"/>
</form:form></li>

<li><form:form method = "POST" action = "${request.getContextPath()}/savingsTransaction" modelAttribute = "ProfileUserId" class ="transactionHistoryForm">
<form:hidden path = "userId" value="${ProfileUserId.getUserId()}" />
<input type ="submit" value ="Savings" class = "button"/>
</form:form></li>
</ul>

</li>

<li>Transactions
<ul>
<li><form:form method = "POST" action = "${request.getContextPath()}/transferBetweenAccounts" modelAttribute = "ProfileUserId" class ="transactionHistoryForm">
<form:hidden path = "userId" value="${ProfileUserId.getUserId()}" />
<input type ="submit" value ="Transfer" class = "button"/>
</form:form></li>
<li> <form:form method = "POST" action = "${request.getContextPath()}/ATM" modelAttribute = "ProfileUserId" class ="transactionHistoryForm">
<form:hidden path = "userId" value="${ProfileUserId.getUserId()}" />
<input type ="submit" value ="Deposit/Withdraw" class = "button"/>
</form:form> </li>
</ul>
 </li>
 
 <li><form method="post" action = "/user/logout" >

<input type ="hidden" name="status" value="destroy"> 
<input type ="submit" value ="logout"> 

</form></li>

</ul>



<h1>Primary Account</h1>


<table> 

<tr> 
<th> Transaction Number</th>
<th> Transaction Type</th>
<th> Transaction Amount</th>
<th> Transaction Date</th>
<th> Transaction Description</th>



</tr>
<c:forEach var ="item" items ="${PrimaryTransactions }">

<tr> <td> ${item.getTransactionNumber()} </td> 

 <td> ${item.getTransactionType()} </td> 
<td> ${item.getTransactionAmount()} </td> 
 <td> ${item.getTransactionDate()} </td> 

 <td> ${item.getTransactionDescription()} </td> </tr>
</c:forEach>

</table>


</body>
</html>