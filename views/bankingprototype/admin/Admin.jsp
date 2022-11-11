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
		<h3>Withdraw Request</h3>
		<%BankInterface bInterface=new BankLogical();			
		List<Request>requestList=bInterface.getWithdrawRequest();
		List<AccountRequest>accountRequestList=bInterface. getRequestForAccountStatus(); %>
		<table class="table table-striped table-hover">
			<tr>
				<th>CustomerId</th>
				<th>AccountNumber</th>
				<th>Amount</th>
				<th>status</th>
				<th>RequestedTime</th>
			</tr> 
			
			<form action="../../../withdrawApprovePage" method="post">
			
			<%for(Request newRequest:requestList){ %>
			
			<tr>
				<td><input  name="customerId" value=<%=newRequest.getCustomerId()%>  class="bgnone" readonly></td>
				<td><input name="accountNumber" value=<%=newRequest.getAccountNumber()%> class="bgnone" readonly></td>
				<td><input name="amount" value=<%=newRequest.getAmount()%> class="bgnone" readonly></td>
				<td><input type="submit" name="requestStatus" class="btn btn-dark" class="bgnone" value=<%=newRequest.getStatus()%>></td>
				<td class="bgnone" ><%=MillisToDate.getZonedDateTime(newRequest.getRequestTime())%></td>
				</tr>
				
				<%}%>
			
				</form>
		</table>
		<form>
		<table class="table table-striped table-hover">
			<h3>Account Request</h3>
			<tr>
				<th>CustomerId</th>
				<th>AccountNumber</th>
				<th>Describtion</th>
				<th>Status</th>
			</tr>
			<%for(AccountRequest accountRequest:accountRequestList) {%>
			<tr>
				<td><%=accountRequest.getCustomerId()%></td>
				<td><%=accountRequest.getAccountNumber()%></td>
				<td><%=accountRequest.getStatus()%></td>
				<td><%=accountRequest.getStatusResult()%></td>
			</tr>
			<%}%>
		</table>
		</form>
		</div>
</body>
</html>