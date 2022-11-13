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





////


</style>
<meta charset="UTF-8">
<title>User Customer Info By Id</title>
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
	<!-- 	<form action="MyDetailsHome" method="post" target="admin">  -->
	 <div class="container">
		<h1 style="font-size:30px;color:#DB4437;">User Info</h1>
	
	<form action="<%=request.getContextPath() %>/customerInfoProcess">
	
			<flable><b style="font-size:20px;">User Id</b>
			</flable>
			<div>
			<input type="number" name="customerId" style="border-top: 1px solid #fff;border-left: 1px solid #fff;border-right: 1px solid #fff;" required/>
			</div>
		<p style="color:red">${userCustomerInfo }</p>
	
	
		<div class="container pt-5">
		<input type="submit" value="find" class="btn btn-success" style="font-size:25px;">
		</div>
		</form>
		</div>
		<div class="container">
		<form action="<%=request.getContextPath() %>/UserInfoByIdPage">
		<div class="container pt-5">
		<input type="submit" value="show all" class="btn btn-success" style="font-size:25px;">
		</div>
		<div>
			<%HttpSession httpSession=request.getSession();
			List<User>listUser=(List<User>)httpSession.getAttribute("listUser");
			List<Customer>listCustomer=(List<Customer>)httpSession.getAttribute("listCustomer");
			%>
			<table class="content-table">
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
	</div>
	
</body>
</html>