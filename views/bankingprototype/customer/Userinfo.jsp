<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="utili.MillisToDate" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Userinfo</title>
</head>
<body>
	<h1>MY DETAILS</h1>
	<br>
	<form action="../../../editUserInfoProcess" method="post">
		<table border="2">
				<tr height="50px">
					<th>customerId</th>
					<td><input type="number" name="userId" value=${userInfo.customerId } readonly></td>
				</tr>
			<tr height="50px">
				<th>Name</th>
				<td><input type="text" name="name" value=${userInfo.getName() } Style="height:50px;"/></td>
			</tr>
			<tr height="50px">
				<th>Mobile</th>
				<td>${userInfo.getMobileNumber() }</td>
			</tr>
	<!-- 		<tr height="50px">
				<th>status</th>
				<td>${userInfo.getStatus() }</td>
			</tr> -->
			<tr height="50px">
				<th>Email</th>
				<td><input type="email" name="email" value=${userInfo.getEmail() } Style="height:50px;"/></td>
			</tr>
			<tr height="50px">
				<th>DateOfBirth</th>
				<td><input type="date" value="2017-06-01" name="dob" Style="height:50px;"/></td>
			</tr>
		</table>
		<input type="submit" value="save" Style="position:fixed;left:10%;top:80%;height:50px;"/>
	</form>
</body>
</html>