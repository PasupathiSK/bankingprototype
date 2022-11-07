<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customerinfo</title>
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
	<h1>Customer Info</h1>
	<div>
	<form action="<%=request.getContextPath() %>/editUserInfoProcess">
		<table id="customers">
			<!--  	<tr height="50px">
					<th>customerId</th>
					<td><input type="number" name="userId" value=${userInfo.customerId } readonly></td>
				</tr>-->
			<tr >
				<th>Name</th>
				<td><input type="text" name="name" value="${userInfo.getName() }" Style="height:50px;border:none;background-color:Beige;"/></td>
			</tr>
			<tr>
				<th>Mobile</th>
				<td>${userInfo.getMobileNumber() }</td>
			</tr>
	<!--  		<tr height="50px">
				<th>status</th>
				<td>${userInfo.getStatus() }</td>
			</tr>-->
			<tr >
				<th>Email</th>
				<td><input type="email" name="email" value="${userInfo.getEmail() }" Style="height:50px;border:none;background-color:Beige;"/></td>
			</tr>
			<tr >
				<th>DateOfBirth</th>
				<td><input type="date" name="dob" value="${userInfo.getDateOfBirth() }" Style="height:50px;border:none;"/>${userInfo.getDateOfBirth() }</td>
			</tr>
		
		<!--</form>
 </div>
	<div>
	 <form action="../../../editCustomerInfoProcess" method="post">
	<table border="2">-->
	
		<tr >
			<th>customerId</th>			
					<td><input  name="userId" value="${customerInfo.getCustomerId() }"Style="height:50px;border:none;background-color:Beige;" readonly></td>
			</tr>
			<tr >
			<th>Aadhar</th>
			<td><input  name="aadhar" value="${customerInfo.getAadhar() }" Style="height:50px;border:none;background-color:Beige;" readonly/></td>
			</tr>
			<tr >
			<th>PanNumber</th>
			<td><input  name="panNumber" value="${customerInfo.getPanNumber() }" Style="height:50px;border:none;background-color:Beige;" readonly/></td>
			</tr>
			<tr>
			<th >Zipcode</th>
			<td><input  name="zipcode" value="${customerInfo.getZipcode() }" Style="height:50px;border:none;background-color:Beige;" readonly/></td>
			</tr>
			<tr>
			<th>Status</th>
			<td>${customerInfo.getStatus() }</td>
		</tr>
		
	</table>
			<input type="submit" value="save" Style="position:fixed;left:25%;top:68%;height:50px;border:none;background-color:LightCyan;font-size:30px;"/>
	
<!-- 	<input type="submit" value="save" Style="position:fixed;top:35%;left:10%;height:50px;" /> -->
	</form>
	</div>
</body>
</html>