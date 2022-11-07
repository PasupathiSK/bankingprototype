<!DOCTYPE jsp>
<jsp>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<style>
.flex-container {
	display: flex;
	background-color: DodgerBlue;
	width: 0px;
}

input[type=submit] {
	width: 100%;
	padding: 12px 20px;
	margin: 0px 0;
	box-sizing: border-box;
	border-color: yellow;
	background-color: #3CBC8D;
	color: white;
}

.drop {
	width: 100%;
	box-sizing: border-box;
	border-color: yellow;
	background-color: #3CBC8D;
	color: white;
}

.dropbtn {
	background-color: #3CBC8D;
	color: white;
	padding: 11px;
	font-size: 16px;
	border-color: yellow;
	cursor: pointer;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #3CBC8D;
}

.dropdown-content a {
	color: black;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #3CBC8D
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3CBC8D;
}
</style>
</head>
<body style="background-color: AliceBlue;">
	<h1 style="text-align: center;">BLA)KPINK BANK</h1>
	<form action="Logout" method="post"
		style="position: fixed; top: 0px; right: 50px;">
		<input type="submit" value="Logout">
	</form>
	<form action="AdminHomePage" method="post"
		style="position: fixed; left: 50px; top: 0px; background-color: blue;">
		<input type="submit" value="Home" />
	</form>
	<menu style="position: fixed; left: 400px;top:45px;">
		<div class="flex-container">
			<form action="<%=request.getContextPath() %>/UserInfoByIdPage"method="post" target="admin">
				<input type="submit" value="User Info" />
			</form>
			<form
				action="<%=request.getContextPath() %>/TransactionDetailsByIdPage"method="post" target="admin">
				<input type="submit" value="Statement" />
			</form>

			<form action="<%=request.getContextPath() %>/AllAccountInfoPage"method="post" target="admin">
				<input type="submit" value="Account Info" />
			</form>


			<form action="<%=request.getContextPath() %>/ActiveAndDeactivePage"method="post" target="admin">
				<input type="submit" value="Account Status" />
			</form>

			<form action="<%=request.getContextPath() %>/BlockAccountPage"method="post" target="admin">
				<input type="submit" value="Block Account" />
			</form>

			<form
				action="<%=request.getContextPath() %>/BlockCustomerByCustomerIdPage"method="post" target="admin">
				<input type="submit" value="Bolck Customer" />
			</form>

			<div class="dropdown">
				<button class="dropbtn">AddUser</button>
				<div class="dropdown-content" style="overflow: visible;">
					<!--    <form action="/InsertHomePage" method="post" target="admin">
				<input type="submit" value="Add User" />
				</form>-->
					<form action="<%=request.getContextPath() %>/InsertInAccountPage"
						method="post" target="admin">
						<input type="submit" value="Add Account">
					</form>
					<form action="<%=request.getContextPath() %>/InsertInUserPage"
						method="post" target="admin">
						<input type="submit" value="Add User">
					</form>
				</div>
			</div>
		</div>
	</menu>
	<iframe src="views/bankingprototype/admin/Admin.jsp" name="admin"
		height="100%" width="100%"
		style="position: absolute; top: 200px; background-color: LightCyan; border: none;"></iframe>
</body>
</jsp>