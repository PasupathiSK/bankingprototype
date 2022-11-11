<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Account</title>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color:Beige;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
fLabel{
width:100px;
display:inline-block;
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
  padding: 10px;
}
</style>
</head>
<body>
		<h1>Account Info</h1>
		<form action="<%=request.getContextPath() %>/accountInfoProcess" method="post">
<div>
User Id:<input type="number" name="customerId"/>
</div>
<div>
<input type="submit" value="find">
</div>
</form>
<form action="<%=request.getContextPath() %>/AllAccountInfoPage">
<div>
<input type="submit" value="show All">
</div>
</form>
		<table id="customers">
			<tr>
				<th>Account Number</th>
				<th>CustomerId</th>
				<th>Branch</th>
				<th>Account Type</th>
				<th>Balance</th>
				<th>Account Status</th>
				<th>Ifsc</th>
			</tr>
			<c:forEach var="account" items="${allAccountInfo}">
			<tr>
				<td>${account.getAccountNumber()}</td>
				<td>${account.getCustomerId()}</td>
				<td>${account.getBranch()}</td>
				<td>${account.getAccountType()}</td>
				<td>${account.getBalance()}</td>
				<td>${account.getAccountStatus()}</td>
				<td>${account.getIfsc()}</td>
			</tr>
			</c:forEach>
		</table>
		<p style="color:red">${allAccountInfoError }</p>
</body>
</html>