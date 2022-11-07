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
</head>
<body>
		<div style="text:align:center;" >
		<table id="customers">
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
				<tr>
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