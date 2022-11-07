<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
select {
  width: 100%;
  padding: 16px 20px;
  border: none;
  border-radius: 4px;
  background-color: #f1f1f1;
}
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
  padding: 40px;
}
</style>
<meta charset="UTF-8">
<title>Transfer</title>
</head>
<body>
	<h1>Transfer Home</h1>
	<form action="transferProcess" method="post">
		<div>
		<flabel>From:</flabel> 
		<select name="accountNumber">
				<c:forEach var="account" items="${customerIdToAllAccount }">
			<option value="${account.getAccountNumber() }">${account.getAccountNumber()}</option>
			</c:forEach>
			</select>
		</div>
		<div>
			<flabel>To:</flabel> <input type="number" name="toAccountNumber" />
		</div>
		<div>
			<flabel>Amount:</flabel> <input type="number" name="amount" min="0"/>
		</div>
		<div>
		<input type="submit" value="submit">
		</div>
		<p style="color:red">${transaction }</p>
	</form>
</body>
</html>