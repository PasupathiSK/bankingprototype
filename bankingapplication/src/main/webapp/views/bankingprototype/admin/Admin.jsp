<%@page import="bankingapplication.controller.MainServlet" %>
<%@page import="java.util.List" %>
<%@page import="model.Request" %>
<%@page import="model.AccountRequest" %>
<%@page import="dao.BankInterface" %>
<%@page import="dao.BankLogical" %>
<%@page import="utili.MillisToDate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
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
</style>
<meta charset="UTF-8">
<title>Admin Page</title>
</head>
<body>
		<h3>Withdraw Request</h3>
		<%BankInterface bInterface=new BankLogical();			
		List<Request>requestList=bInterface.getWithdrawRequest();
		List<AccountRequest>accountRequestList=bInterface. getRequestForAccountStatus(); %>
		<table id="customers">
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
				<td><input  name="customerId" value=<%=newRequest.getCustomerId()%>  readonly></td>
				<td><input name="accountNumber" value=<%=newRequest.getAccountNumber()%> readonly></td>
				<td><input name="amount" value=<%=newRequest.getAmount()%> readonly></td>
				<td><input type="submit" name="requestStatus" value=<%=newRequest.getStatus()%>></td>
				<td><%=MillisToDate.getZonedDateTime(newRequest.getRequestTime())%></td>
				</tr>
				<%}%>
				
				</form>
		</table>
		<form>
		<table id="customers">
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
</body>
</html>