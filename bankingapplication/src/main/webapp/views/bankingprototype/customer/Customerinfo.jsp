<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customerinfo</title>
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
     height:50%;
    width:50%;
    margin-left:25%;
    background:#141e30;
}


.content-table thead tr {
    color: #ffffff;
    text-align: left;
    font-weight: bold;
}

.content-table th,
.content-table td {
font-size:15px;
    padding: 15px 30px;
}
.content-table th{
color:black;
font-size:25px;
background-color: #007BFF;
}


.content-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.content-table tbody tr:nth-of-type(even) {
    background-color:grey;
}
.content-table tbody tr:nth-of-type(odd) {
    background-color:#404040;
}

.content-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}

.content-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}
.content-table tbody tr:hover {background-color:silver;}
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
	<h1 style="font-size:40px;color:#DB4437;margin-left:35%;">MY DETAILS</h1>
	<div>
	<form action="<%=request.getContextPath() %>/editUserInfoProcess">
		<table class="content-table">
		<thead>
			<!--  	<tr height="50px">
					<th>customerId</th>
					<td><input type="number" name="userId" value=${userInfo.customerId } readonly></td>
				</tr>-->
			<tr >
				<th>Name</th>
				<td><input type="text" name="name" value="${userInfo.getName() }" Style="height:50px;border:none;background:none;font-size:25px;color: #ffffff;"/></td>
			</tr>
			<tr>
				<th>Mobile</th>
				<td style="font-size:25px;">${userInfo.getMobileNumber() }</td>
			</tr>
	<!--  		<tr height="50px">
				<th>status</th>
				<td>${userInfo.getStatus() }</td>
			</tr>-->
			<tr >
				<th>Email</th>
				<td><input type="email" name="email" value="${userInfo.getEmail() }" Style="height:50px;border:none;background:none;font-size:25px;color: #ffffff;"/></td>
			</tr>
			<tr >
				<th>DateOfBirth</th>
				<td><input type="date" name="dob" value="${userInfo.getDateOfBirth() }" Style="height:50px;border:none;background:none;font-size:25px;color: #ffffff;"/></td>
			</tr>
		
		<!--</form>
 </div>
	<div>
	 <form action="../../../editCustomerInfoProcess" method="post">
	<table border="2">-->
	
		<tr >
			<th>customerId</th>			
					<td><input  name="userId" value="${customerInfo.getCustomerId() }"Style="height:50px;border:none;background:none;font-size:25px;color: #ffffff;" readonly></td>
			</tr>
			<tr >
			<th>Aadhar</th>
			<td><input  name="aadhar" value="${customerInfo.getAadhar() }" Style="height:50px;border:none;background:none;font-size:25px;color: #ffffff;" readonly/></td>
			</tr>
			<tr >
			<th>PanNumber</th>
			<td><input  name="panNumber" value="${customerInfo.getPanNumber() }" Style="height:50px;border:none;background:none;font-size:25px;color: #ffffff;" readonly/></td>
			</tr>
			<tr>
			<th >Zipcode</th>
			<td><input  name="zipcode" value="${customerInfo.getZipcode() }" Style="height:50px;border:none;background:none;font-size:25px;color: #ffffff;" readonly/></td>
			</tr>
			<tr>
			<th>Status</th>
			<td style="font-size:25px;">${customerInfo.getStatus() }</td>
		</tr>		
		</thead>
	</table>	
	
	<div class="container">
	
			<input type="submit" value="save" class="btn btn-success" style="font-size:20px;margin-left:40%;"<p style="font-size:10px;color:red">${editUserInfoMessage }</p>
			/>
	</div>
<!-- 	<input type="submit" value="save" Style="position:fixed;top:35%;left:10%;height:50px;" /> -->

	</form>
	
	</div>
	</div>
</body>
</html>