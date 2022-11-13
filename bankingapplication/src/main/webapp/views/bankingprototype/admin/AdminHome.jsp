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

.dropptn {
	 background-color: transparent;
  color: black;
  padding: 0px 80px;
  margin: 0px;
  font-size: 26px;
  border: none;
  font-size: 20px;
  cursor: pointer;
}

.droptown {
	position: absolute;
  display: inline-block;
  float: right !important;
  right: -2px;
  
}

.droptown-content {
	display: none;
  position: absolute;
  background:linear-gradient(#007BFF, #007BFF);
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 5);
  padding: 18px 20px;
  z-index: 167;
  color: black;

}

.droptown-content a {
	color:white;
	display: block;
}

.droptown-content a:hover {
	background-color: red;
}

.droptown:hover .droptown-content {
	background: #243b55;
	display: block;
}

.droptown:hover .dropptn {
	background-color: none;
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
  background:#243b55;
  height: 290px;
  position: relative;
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

ul.topnav li :hover {
	background-color:#6c757d!important;
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
ul.topnav {
  list-style-type: none;
}


.footer {
list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background:#F0FFFF;
  height: 30px;
  margin-top:37%;
  position: relative;
  text-align: center;
  margin-left:15%;
  font-size:20px;
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
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

</head>
<body>
	<%
	BankInterface bInterface = new BankLogical();
	HttpSession httpSession = request.getSession();
	String name = (String) httpSession.getAttribute("name");
	%>
	<ul class="topnav">
	

<li>
			<div class="droptown">
				<button class="dropptn">
					<span
						style='font-size: 80px; '>&#128100;</span>
				</button>
				<div class="droptown-content" style="overflow: visible;">
					<form action="<%=request.getContextPath()%>/MyDetailsHome"
						method="post" target="admin" style="width: 100%;">
						<i class='fas fa-user-edit' style="color:white;"><input type="submit" value="MyInfo"
							style=" border: none; font-size: 25px; background: none; color: white;" /></i>
					</form>
					<form action="<%=request.getContextPath()%>/UpdatePasscode"
						method="post" target="admin" style="width: 100%;">
						<i class='fas fa-key' style="color:white;"><input type="submit" value="Change Password"
							style=" border: none; font-size: 25px; background: none; color: white;" /></i>
					</form>
					<form action="Logout" method="post" style="width: 100%;">
						<i class='fas fa-sign-out-alt' style="color:white;"><input type="submit" value="Logout"
							style=" border: none; font-size: 25px; background: none; color: white;"></i>
					</form>
				</div>
			</div>

		</li>	
		
		
	
			
		

		
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
	<iframe src="views/bankingprototype/admin/AdminMenu.jsp" height="100%"
		style="position: fixed; top: 120px; width: 15%; border: none; "></iframe>
	<iframe src="views/bankingprototype/admin/Admin.jsp" name="admin"
		height="100%"
		style="position: fixed; left: 15%; width: 85%; top: 120px; border: none;"></iframe>
</body>
</html>