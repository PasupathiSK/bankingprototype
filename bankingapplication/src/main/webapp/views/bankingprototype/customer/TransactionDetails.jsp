<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="utili.MillisToDate" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transaction Details</title>
<style>

* {
    /* Change your font family */
    font-family: sans-serif;
}

.content-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    min-width: 400px;
    border-radius: 5px 5px 0 0;
    overflow: auto;
    box-shadow: 0 0 20px rgba(0, 0, 0, 50);
    width:75%;
}

.content-table thead tr {
    color: #ffffff;
    text-align: left;
    font-weight: bold;
}

.content-table th,
.content-table td {
font-size:15px;
    padding: 12px 15px;
}
.content-table th{
background-color: #007BFF;
color:white;
}

.content-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.content-table tbody tr:nth-of-type(even) {
    background-color:#F0FFFF;
}
.content-table tbody tr:nth-of-type(odd) {
    background-color:#DCDCDC;
}

.content-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}

.content-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}
.content-table tbody tr:hover {background-color:#778899;}
body{
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  padding: 10px;
  background: white;
  linear-gradient(#141e30, #243b55);
  linear-gradient(115deg, #56d8e4 10%, #9f01ea 90%);
}
</style>

<!-- css bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath() %>/asserts/css/bootstrap.min.css">
<!-- end -->

<!-- script -->

	<script src="../asserts/js/jquery.min.js"></script>
	<script src="../asserts/js/bootstrap.min.js"></script>
<!-- end -->

</head>
<body>
<div class="container">
	<h1 style="font-size:40px;color:#DB4437;">Transaction Details</h1>
	<div class="container">
	<table class="content-table">
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
		<tr style="color: black;">
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
	</div>
	<p style="color:red">${transactionDetailsError }</p>
	</div>
</body>
</html>