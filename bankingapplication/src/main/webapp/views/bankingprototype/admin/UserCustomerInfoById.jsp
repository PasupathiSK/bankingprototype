<%@page import="bankingapplication.controller.MainServlet"%>
<%@page import="java.util.List"%>
<%@page import="model.Customer"%>
<%@page import="model.User"%>
<%@page import="dao.BankInterface"%>
<%@page import="dao.BankLogical"%>
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
  width: 10%;
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
<title>User Customer Info By Id</title>
</head>
<body>
	<h1>User Info</h1>
	<!-- 	<form action="MyDetailsHome" method="post" target="admin">  -->
	<form action="<%=request.getContextPath() %>/customerInfoProcess">
		<div>
			User Id :<input type="number" name="customerId" />
		</div>
		<p style="color:red">${userCustomerInfo }</p>
		<div>
		<input type="submit" value="find">
		</div>
		</form>
		<form action="<%=request.getContextPath() %>/UserInfoByIdPage">
		<div>
		<input type="submit" value="show all">
		</div>
		<div>
			<%HttpSession httpSession=request.getSession();
			List<User>listUser=(List<User>)httpSession.getAttribute("listUser");
			List<Customer>listCustomer=(List<Customer>)httpSession.getAttribute("listCustomer");
			%>
			<table id="customers">
				<tr>
					<th>CustomerId</th>
					<th>Name</th>
					<th>Mobile</th>
					<th>Email</th>
					<th>DateOfBirth</th>
					<th>Aadhar</th>
					<th>PanNumber</th>
					<th>Zipcode</th>
					<th>Customer Status</th>
				</tr>
				<%
				int length = listUser.size();
				int newLength = listCustomer.size();
				boolean flag = true;
				Customer customer = new Customer();
				User user = new User();
				for (int i = 0; i < length; i++) {
					user = listUser.get(i);
					if (i < newLength) {
						customer = listCustomer.get(i);
					}
				%>
				<tr>
					<td><%=user.getCustomerId()%></td>
					<td><%=user.getName()%></td>
					<td><%=user.getMobileNumber()%></td>
					<td><%=user.getEmail()%></td>
					<td><%=user.getDateOfBirth()%></td>
					<td><%=customer.getAadhar()%></td>
					<td><%=customer.getPanNumber()%></td>
					<td><%=customer.getZipcode()%></td>
					<td><%=customer.getStatus()%></td>
				</tr>
				<%} %>
			</table>
		</div>
	</form>
</body>
</html>