<!DOCTYPE jsp>
<jsp>
<head>
<meta charset="UTF-8">
<title>Menu</title>
</head>
<body>
	<div>
		<menu style="position: fixed; left: 400px;top:45px;">
			<form action="../../../MyDetailsHome" method="post" target="customer">
				<input type="submit" value="MyInfo" />
			</form>
			<form action="../../../TransactionHome" method="post" target="customer">
			<input type="submit" value="Transaction"/>
			</form>
			<form action="../../../SetRequestAccountStatus" method="post" target="customer">
			<input type="submit" value="Alter AccountStatus"/>
			</form>
			<form action="../../../UpdatePasscode" method="post" target="customer">
			<input type="submit" value="Update Passcode"/>
			</form>
		</menu>
	</div>
	<iframe src="views/bankingprototype/customer/Menu.jsp" name="menu" height="50px" width="100%" style="position:fixed;top:60px"></iframe>
	
</body>
</jsp>