<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Account</title>
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
    overflow: hidden;
    box-shadow: 0 0 20px rgba(0, 0, 0, 50);
    width:95%;
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
background-color:#007BFF;
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
		<h1 style="font-size:30px;color:#DB4437;">Account Info</h1>
		<form action="<%=request.getContextPath() %>/accountInfoProcess" method="post">
		<flable><b style="font-size:20px;">User Id</b>
			</flable>
		
<div>
<input type="number" name="customerId" style="border-top: 1px solid #fff;border-left: 1px solid #fff;border-right: 1px solid #fff;" required/>
</div>
<div class="container pt-5">
<input type="submit" value="find" class="btn btn-success" style="font-size:25px;">
</div>
</form>
<form action="<%=request.getContextPath() %>/AllAccountInfoPage">
<div class="container pt-5">

<input type="submit" value="show All" class="btn btn-success" style="font-size:25px;">
</div>
</form>
		<table class="content-table">
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