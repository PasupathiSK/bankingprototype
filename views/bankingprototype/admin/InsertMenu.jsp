<!DOCTYPE jsp>
<jsp>
<head>
<meta charset="UTF-8">
<title>Insert Menu</title>
</head>
<body>
<menu>
		<div style="height:50px;diplay:block;">
			<form action="../../../InsertInAccountPage" method="post" target="addinfo">
				<input type="submit" value="Add Account">
			</form>
		</div>
		<div style="height:50px;diplay:block;">
			<form action="../../../InsertInCustomerPage" method="post" target="addinfo">
				<input type="submit" value="Add Customer">
			</form>
		</div>
		<div style="height:50px;diplay:block;">
			<form action="../../../InsertInfLoginPage" method="post" target="addinfo">
				<input type="submit" value="Add Login"/>
			</form>
		</div>
		<div style="height:50px;diplay:block;">
			<form action="../../../InsertInUserPage" method="post" target="addinfo">
				<input type="submit" value="Add User">
			</form>
		</div>
	</menu>
</body>
</jsp>