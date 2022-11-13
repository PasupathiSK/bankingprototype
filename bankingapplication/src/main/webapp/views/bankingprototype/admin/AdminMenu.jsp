<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
<!--
.dropbtn {
	background-color: transparent;
	
	padding: 22px 15px;
	margin: 0px 0;
	font-size: 30px;
	border:white;
	
	cursor: pointer;
	color:white;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background:linear-gradient(#007BFF, #007BFF);
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	padding: 20px 92px;
	z-index: 1;
	color: white;
}

.dropdown-content a {
	color: white;
	display: block;
}

.dropdown-content a:hover {
	background-color:#243b55;
}

.dropdown:hover .dropdown-content {
	background-color: #243b55;
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
	background:#243b55;
	height: 100vh;
	
}

ul.topnav li {
margin:0px;
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
	background-color: white;
}

ul.topnav li.right {
	float: right;
}

@media screen and (max-width: 600px) {
	ul.topnav li.right, ul.topnav li {
		float: none;
	}
}
.bgnone{
background:none;
border:none;
color:white;
}
.drpcnt{
width: 100%; border: none; font-size: 20px; background: none; color: white;
}
space{
padding:0px 10px;
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
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>


<!-- end -->
<title>Admin Menu</title>
</head>
<body>
	<ul class="topnav">
		<li>
			<form action="<%=request.getContextPath()%>/AdminHomePage"
				method="post" target="_parent">
				<i class='fas fa-home' style='color:white;'><input type="submit" value="Home" class="dropbtn" /></i>
			</form>
		</li>
		<li>
			<form action="<%=request.getContextPath()%>/UserInfoByIdPage"
				method="post" target="admin">
				<i class='fas fa-users' style="color:white;"><input type="submit" value="User Info" class="dropbtn" /></i>
			</form>
		</li>
		<li>
			<form
				action="<%=request.getContextPath()%>/TransactionDetailsByIdPage"
				method="post" target="admin">
				<i class='fas fa-receipt drpcnt' style="color:white;"><input type="submit" value="Statement" class="dropbtn" /></i>
			</form>
		</li>
		<li>
			<form action="<%=request.getContextPath()%>/AllAccountInfoPage"
				method="post" target="admin">
				<i class='far fa-address-book' style="color:white;"><input type="submit" value="Account Info" class="dropbtn" /></i>
			</form>
		</li>
	<!-- 	<li>


			<form action="<%=request.getContextPath()%>/ActiveAndDeactivePage"
				method="post" target="admin">
				<input type="submit" value="Account Status" class="dropbtn" />
			</form>
		</li>-->
		<li>

			<form action="<%=request.getContextPath()%>/BlockAccountPage"
				method="post" target="admin">
				 <i class='fas fa-exclamation-triangle' style="color:white;"><input type="submit" value="Block Account" class="dropbtn" /></i>
			</form>
		</li>
		<li>
			<form
				action="<%=request.getContextPath()%>/BlockCustomerByCustomerIdPage"
				method="post" target="admin">
				<i class='fas fa-user-lock' style="color:white;"><input type="submit" value="Bolck Customer" class="dropbtn" /></i>
			</form>
		</li>
		<li>
	<div class="dropdown">
				<button class="dropbtn"><i class='fas fa-user-plus' style="color:white;">AddUser</i></button>
				<div class="dropdown-content" style="overflow: visible;">
					   
				</form>
					<form action="<%=request.getContextPath() %>/InsertInAccountPage"
						method="post" target="admin">
						<i class='fas fa-landmark' style="color:white;"><input type="submit" value="Add Account"  style="width: 100%; border: none; font-size: 25px; background: none; color: white;"></i>
					</form>
					<form action="<%=request.getContextPath() %>/InsertInUserPage"
						method="post" target="admin">
						<i class='fas fa-user-alt' style="color:white;"><input type="submit" value="Add User"  style="width: 100%; border: none; font-size: 25px; background: none; color: white;"></i>
					</form>
				</div>
			</div>
			</li>

	</ul>
</body>
</html>