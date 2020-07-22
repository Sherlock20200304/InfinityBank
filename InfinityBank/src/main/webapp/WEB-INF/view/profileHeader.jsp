<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Header</title>

<link href="${pageContext.request.contextPath}/profileHeader.css" rel="stylesheet"/>
</head>
<body>

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


</body>
</html>