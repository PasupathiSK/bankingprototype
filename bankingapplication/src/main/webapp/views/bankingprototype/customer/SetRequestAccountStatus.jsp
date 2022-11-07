<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="utili.MillisToDate"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
flabel{
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
<title>Set Request for Account Status</title>
</head>
<body>

	<h1>Account Status Request</h1>
	<div>
		<form action="setRequestAccountStatusProcess" method="post">
		<div>
		<fable>Account Number:</flable>
			<select name="accountNumber">
				<c:forEach var="account" items="${customerIdToAllAccount }">
					<option value="${account.getAccountNumber() }">${account.getAccountNumber() }</option>
				</c:forEach>
			</select> 
			</div>
			<div>
			<flable>Description:</flable>
			 <input type="text" name="description">
			</div>
			<div>
			<input type="submit" value="submit">
			</div>
		</form>
	</div>
</body>
</html>