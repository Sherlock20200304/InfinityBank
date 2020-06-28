<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Savings Transaction History</title>
<link href="${pageContext.request.contextPath}/styles.css" rel="stylesheet"/>
</head>
<body>

This is your savings account's transaction history
<table> 

<tr> 
<th> Transaction Number</th>
<th> Transaction Type</th>
<th> Transaction Amount</th>
<th> Transaction Date</th>
<th> Transaction Description</th>



</tr>
<c:forEach var ="item" items ="${SavingsTransactions }">

<tr> <td> ${item.getTransactionNumber()} </td> 

 <td> ${item.getTransactionType()} </td> 
<td> ${item.getTransactionAmount()} </td> 
 <td> ${item.getTransactionDate()} </td> 

 <td> ${item.getTransactionDescription()} </td> </tr>
</c:forEach>

</table>
</body>
</html>