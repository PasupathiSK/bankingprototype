<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="utili.MillisToDate" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transaction Details</title>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color:LightCyan;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>
	<h1>Transaction Details</h1>
	<table id="customers">
		<tr>
			<th>Transaction Number</th>
			<th>Account Number</th>
			<th>Branch</th>
			<th>Amount</th>
			<th>customerId</th>
			<th>Date Of Transaction</th>
			<th>Transfer Account From</th>
			<th>Received Account From</th>
			<th>Current Balance</th>
			<th>Transationtype</th>
			<th>ModeOfTransaction</th>
		</tr>

		<c:forEach var="transaction" items="${transactionList }" >
		<tr>
			<td>${transaction.getTransactionNumber()}</td>
			<td>${transaction.getAccountNumber() }</td>
			<td>${transaction.getBranch() }</td>
			<td>${transaction.getAmount() }</td>
			<td>${transaction.getCustomerId() }</td>
			<td>${MillisToDate.getZonedDateTime(transaction.getDateOfTransaction()) }</td>
			<td>${transaction.getTransferAccountFrom() }</td>
			<td>${transaction.getReceivedAccountFrom() }</td>
			<td>${transaction.getCurrentBalance() }</td>
			<td>${transaction.getTransactionType() }</td>
			<td>${transaction.getModeOfTransaction() }</td>
		</tr>
		</c:forEach>
	</table>
	<p style="color:red">${transactionDetailsError }</p>
</body>
</html>