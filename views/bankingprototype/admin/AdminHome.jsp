<%@page import="bankingapplication.controller.MainServlet"%>
<%@ page import="java.util.List"%>
<%@page import="model.Account"%>
<%@page import="dao.BankInterface"%>
<%@page import="dao.BankLogical"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/views/bankingprototype/mycss/myStyle1.css" />

<style>
.dropbtn {
	background-color: transparent;
	color: black;
	padding: 3px 90px;
	margin: 0px 600%;
	font-size: 26px;
	border: none;
	font-size: 20px;
	cursor: pointer;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 5);
	padding: 18px 30px;
	z-index: 1;
	color: black;
	margin: 0px 600%;
}

.dropdown-content a {
	color: black;
	display: block;
}

.dropdown-content a:hover {
	background-color: red;
}

.dropdown:hover .dropdown-content {
	background: #243b55;
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: none;
}

body {
	margin: 0;
}

/* Style the header */
.header {
	background: linear-gradient(#141e30, #243b55);
	padding: 100px;
	text-align: center;
}

////
body {
	margin: 0;
}

ul.topnav {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background: #243b55;
	height: 30%;
}

ul.topnav li {
	margin: 10px;
	float: left;
}

ul.topnav li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

ul.topnav li a:hover:not(.active) {
	background-color: red;
}

ul.topnav li a.active {
	background-color: red;
}

ul.topnav li.right {
	float: right;
}

@media screen and (max-width: 600px) {
	ul.topnav li.right, ul.topnav li {
		float: none;
	}
}
/////
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
<body style="background-color: red;">
	<%
	BankInterface bInterface = new BankLogical();
	HttpSession httpSession = request.getSession();
	String name = (String) httpSession.getAttribute("name");
	%>
	<ul class="topnav">
	


		<li>
			<div class="dropdown">
				<button class="dropbtn">
					<span
						style='font-size: 80px; '>&#128100;</span>
				</button>
				<div class="dropdown-content" style="overflow: visible;">
					<form action="<%=request.getContextPath()%>/MyDetailsHome"
						method="post" target="customer" style="width: 100%;">
						<input type="submit" value="MyInfo"
							style="width: 100%; border: none; font-size: 25px; background: none; color: white;" />
					</form>
					<form action="<%=request.getContextPath()%>/UpdatePasscode"
						method="post" target="customer" style="width: 100%;">
						<input type="submit" value="Change Password"
							style="width: 100%; border: none; font-size: 25px; background: none; color: white;" />
					</form>
					<form action="Logout" method="post" style="width: 100%;">
						<input type="submit" value="Logout"
							style="width: 100%; border: none; font-size: 25px; background: none; color: white;">
					</form>
				</div>
			</div>

		</li>
			<h1 style="position: fixed; left: 0px; color: red;">WELCOME <%=name%></h1>
		<h1 style="position: fixed; left: 550px;top:0px; font-size: 55px; color: #DB7093;">BLA)KPINK BANK</h1>

		
	</ul>
	<!-- 
	<form action="AdminHomePage" method="post"
		style="position: fixed; left: 50px; top: 0px; background-color: blue;">
		<input type="submit" value="Home" />
	</form>
	
	<menu style="position: fixed; left: 400px;top:45px;">
		<div class="flex-container">
			<form action="%=request.getContextPath() %>/UserInfoByIdPage"method="post" target="admin">
				<input type="submit" value="User Info" />
			</form>
			<form
				action="%=request.getContextPath() %>/TransactionDetailsByIdPage"method="post" target="admin">
				<input type="submit" value="Statement" />
			</form>

			<form action="%=request.getContextPath() %>/AllAccountInfoPage"method="post" target="admin">
				<input type="submit" value="Account Info" />
			</form>


			<form action="%=request.getContextPath() %>/ActiveAndDeactivePage"method="post" target="admin">
				<input type="submit" value="Account Status" />
			</form>

			<form action="%=request.getContextPath() %>/BlockAccountPage"method="post" target="admin">
				<input type="submit" value="Block Account" />
			</form>

			<form
				action="//st.getContextPath() %>/BlockCustomerByCustomerIdPage"method="post" target="admin">
				<input type="submit" value="Bolck Customer" />
			</form>

			<div class="dropdown">
				<button class="dropbtn">AddUser</button>
				<div class="dropdown-content" style="overflow: visible;">
					<!--    <form action="/InsertHomePage" method="post" target="admin">
				<input type="submit" value="Add User" />
				</form>
					<form action="%=request.getContextPath() %>/InsertInAccountPage"
						method="post" target="admin">
						<input type="submit" value="Add Account">
					</form>
					<form action="%=request.getContextPath() %>/InsertInUserPage"
						method="post" target="admin">
						<input type="submit" value="Add User">
					</form>
				</div>
			</div>
		</div>
	</menu>
	-->
	<iframe src="views/bankingprototype/admin/AdminMenu.jsp" height=100%;
		style="position: fixed; top: 100px; width: 15%; border: none; background: #4682B4;"></iframe>
	<iframe src="views/bankingprototype/admin/Admin.jsp" name="admin"
		height="100%"
		style="position: fixed; left: 15%; width: 85%; top: 100px; border: none; background: #141e30;"></iframe>
</body>
</html>