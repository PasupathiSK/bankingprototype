<%@page import="bankingapplication.controller.MainServlet" %>
<%@page import="model.Account" %>
<%@page import="java.util.List" %>
<%@page import="dao.BankInterface" %>
<%@page import="dao.BankLogical" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<style>
fLabel{
width:100px;
display:inline-block;
}
input[type=text], select {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=number], select {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 20%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<meta charset="UTF-8">
<title>Transaction Limit</title>
</head>
<body>
	<h1>Transaction Details</h1>
	<form action="TransactionDetailsPage" mehtod="post" targer="transaction">
	<div><flabel>Account Number:</flabel>
	<input type="number" name="accountNumber" required></div>
		<div><flabel>Number Of Days:</flabel>
		<select name="days">
			<option value="7">7</option>
			<option value="15">15</option>
		</select></div>
		<div>
		<input type="submit" value="submit">
		</div>
	</form>
</body>
</html>