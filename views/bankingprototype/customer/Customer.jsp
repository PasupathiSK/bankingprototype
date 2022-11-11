<%@page import="bankingapplication.controller.MainServlet" %>
<%@ page import="java.util.List" %>
<%@page import="model.Account" %>
<%@page import="dao.BankInterface" %>
<%@page import="dao.BankLogical" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Customer Page</title>
 <!-- CSS only 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
 <link rel="stylesheet" href="../asserts/css/bootstrap.min.css">  -->
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
background-color:#243b55;
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
<!-- 
<script src="../asserts/js/jquery.min.js"></script>
		<script src="../asserts/js/bootstrap.min.js"></script>
		-->
		<div class="container"> 
		<table class="content-table" border="1">
			<tr>
				<th>AccountNumber</th>
				<th>Branch</th>
				<th>AccountType</th>
				<th>Balance</th>
				<th>AccountStatus</th>
				<th>Ifsc</th>
			</tr>
				<%BankInterface bInterface=new BankLogical(); 
				HttpSession httpSession=request.getSession();
				List<Account>list=(List<Account>)httpSession.getAttribute("userId");%>
				<%for(Account account:list){%>
				<tr class="active-now" style="color: black;">
				<td><%=account.getAccountNumber()%></td>
				<td><%=account.getBranch() %></td>
				<td><%=account.getAccountType() %></td>
				<td><%=account.getBalance() %></td>
				<td><%=account.getAccountStatus() %></td>
				<td><%=account.getIfsc() %></td>
				</tr>
				<%}%>
		</table>
		</div>
</body>
</html>