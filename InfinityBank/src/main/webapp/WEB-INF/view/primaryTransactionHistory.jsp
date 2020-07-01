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
</head>
<body>

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