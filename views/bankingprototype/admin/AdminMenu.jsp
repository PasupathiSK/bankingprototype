<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
<!--
.dropbtn {
	background-color: transparent;
	padding: 22px 90px;
	margin: 0px 0;
	font-size: 26px;
	border: white;
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
	background: transparent; linear-gradient (90deg, transparent, #03e9f4);
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	padding: 22px 90px;
	z-index: 1;
	color: white;
}

.dropdown-content a {
	color: white;
	display: block;
}

.dropdown-content a:hover {
	background-color: none;
}

.dropdown:hover .dropdown-content {
	background: #141e30;
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: none;
}

body {
	margin: 0;
}

/* Style the header */


-->
////
body {
	margin: 0;
}

ul.topnav {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: visible;
	background: #5585b5;
	height:100%;
}

ul.topnav li {
	margin: 0px;
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
	background-color: #111;
}

ul.topnav li a.active {
	background-color: #04AA6D;
}

ul.topnav li.right {
	float: right;
}

@media screen and (max-width: 600px) {
	ul.topnav li.right, ul.topnav li {
		float: none;
	}
}
</style>



<!-- end -->
<title>Admin Menu</title>
</head>
<body>
	<ul class="topnav">
		<li>
			<form action="<%=request.getContextPath()%>/AdminHomePage"
				method="post" target="_parent">
				<input type="submit" value="Home" class="dropbtn" />
			</form>
		</li>
		<li>
			<form action="<%=request.getContextPath()%>/UserInfoByIdPage"
				method="post" target="admin">
				<input type="submit" value="User Info" class="dropbtn" />
			</form>
		</li>
		<li>
			<form
				action="<%=request.getContextPath()%>/TransactionDetailsByIdPage"
				method="post" target="admin">
				<input type="submit" value="Statement" class="dropbtn" />
			</form>
		</li>
		<li>
			<form action="<%=request.getContextPath()%>/AllAccountInfoPage"
				method="post" target="admin">
				<input type="submit" value="Account Info" class="dropbtn" />
			</form>
		</li>
		<li>


			<form action="<%=request.getContextPath()%>/ActiveAndDeactivePage"
				method="post" target="admin">
				<input type="submit" value="Account Status" class="dropbtn" />
			</form>
		</li>
		<li>

			<form action="<%=request.getContextPath()%>/BlockAccountPage"
				method="post" target="admin">
				<input type="submit" value="Block Account" class="dropbtn" />
			</form>
		</li>
		<li>
			<form
				action="<%=request.getContextPath()%>/BlockCustomerByCustomerIdPage"
				method="post" target="admin">
				<input type="submit" value="Bolck Customer" class="dropbtn" />
			</form>
		</li>
		<li>
	<div class="dropdown">
				<button class="dropbtn">AddUser</button>
				<div class="dropdown-content" style="overflow: visible;">
					   
				</form>
					<form action="<%=request.getContextPath() %>/InsertInAccountPage"
						method="post" target="admin">
						<input type="submit" value="Add Account"  style="width: 100%; border: none; font-size: 25px; background: none; color: white;">
					</form>
					<form action="<%=request.getContextPath() %>/InsertInUserPage"
						method="post" target="admin">
						<input type="submit" value="Add User"  style="width: 100%; border: none; font-size: 25px; background: none; color: white;">
					</form>
				</div>
			</div>
			</li>

	</ul>
</body>
</html>