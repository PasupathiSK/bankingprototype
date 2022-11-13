<%@page import="bankingapplication.controller.MainServlet" %>
<%@page import="java.util.List" %>
<%@page import="model.Request" %>
<%@page import="model.AccountRequest" %>
<%@page import="dao.BankInterface" %>
<%@page import="dao.BankLogical" %>
<%@page import="utili.MillisToDate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
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
.bgnone{
	
	background:none;
	border:none;
	
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
			<h1 style="color: #DB4437;">WELCOME ADMIN</h1>

		<h3>Withdraw Request</h3>
		<%BankInterface bInterface=new BankLogical();			
		List<Request>requestList=bInterface.getWithdrawRequest();
		List<AccountRequest>accountRequestList=bInterface. getRequestForAccountStatus(); %>
		<table class="content-table">
			<tr>
				<th>CustomerId</th>
				<th>AccountNumber</th>
				<th>Amount</th>
				<th>status</th>
				<th>RequestedTime</th>
				<th>Decision</th>
			</tr> 
			
			<form action="<%=request.getContextPath() %>/withdrawApprovePage" method="post" target="_parent">
			
			<%for(Request newRequest:requestList){ %>
			
			<tr>
				<td><input  name="customerId" value=<%=newRequest.getCustomerId()%>  class="bgnone" readonly></td>
				<td><input name="accountNumber" value=<%=newRequest.getAccountNumber()%> class="bgnone" readonly></td>
				<td><input name="amount" value=<%=newRequest.getAmount()%> class="bgnone" readonly></td>
				<td><input type="submit" name="requestStatus"  class="bgnone" value=<%=newRequest.getStatus()%>></td>
				<td class="bgnone" ><%=MillisToDate.getZonedDateTime(newRequest.getRequestTime())%></td>
				<td><input type="submit" name=status value="approved" class="btn btn-success m-1"><input type="submit" name="status" value="rejected" class="btn btn-danger"></td>
				</tr>
				
				<%}%>
			
				</form>
		</table>
		<form action="<%=request.getContextPath() %>/UpdateAccountStatus" method="post" target="_parent">
		<table class="content-table">
			<h3>Account Request</h3>
			<tr>
				<th>CustomerId</th>
				<th>AccountNumber</th>
				<th>Describtion</th>
				<th>Status</th>
				<th>Decision</th>
			</tr>
			<%for(AccountRequest accountRequest:accountRequestList) {%>
			<tr>
				<td><input name="customerId" value=<%=accountRequest.getCustomerId()%> class="bgnone" readonly></td>
				<td><input name="accountNumber" value=<%=accountRequest.getAccountNumber()%> class="bgnone" readonly></td>
				<td><%=accountRequest.getStatus()%></td>
				<td><%=accountRequest.getStatusResult()%></td>
				<td><input type="submit" value="active" name="status" class="btn btn-success m-1"><input type="submit" value="inactive" name="status" class="btn btn-danger"></td>
			</tr>
			<%}%>
		</table>
		</form>
		</div>
</body>
</html>