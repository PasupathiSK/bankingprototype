<!DOCTYPE jsp>
<jsp>
<head>
<meta charset="UTF-8">
<title>CustomerHome</title>
<style>
.flex-container {
	display: flex;
	background-color: DodgerBlue;
	width: 0px;
}
.input{
	width: 100%;
	padding: 12px 20px;
	margin: 0px 0;
	box-sizing: border-box;
	border-color: Yellow;
	background-color: #3CBC8D;
	color: white;
	font-size:18px;
}
.clr{
background-color:LightYellow;
border:none;
font-size:15px;
}
.top{
	width: 100%;
	padding: 12px 20px;
	margin: 0px 0;
	box-sizing: border-box;
	border-color: green;
	background-color: red;
	color: white;
}
.home{
	width: 100%;
	padding: 12px 20px;
	margin: 0px 0;
	box-sizing: border-box;
	border-color: green;
	background-color:green;
	color: white;
}
drop {
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
	background-color: red;
}

.dropdown:hover .dropdown-content {
    background-color:white;
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: red;
}

</style>

</head>
<body style="background-color:Azure;">
<h1 style="text-align:center;">BLA)KPINK BANK</h1>
<form action="Logout" method="post" style="position:fixed;top:5px;right:50px;">
<input type="submit" value="Logout" class="top">
</form>
<form action="CustomerHomePage" method="post" style="position:fixed;top:5px;left:50px;">
<input type="submit" value="Home" class="home">
</form>
<menu style="position: fixed; left: 550px;top:45px;">
	<div class="flex-container" >
			<form action="<%=request.getContextPath() %>/MyDetailsHome" method="post" target="customer" style="margin-right:10px;">
				<input type="submit" value="MyInfo" class="input" />
			</form>
		<!-- 	<form action="/TransactionHome" method="post" target="customer">
			<input type="submit" value="Transaction"/>
			</form>-->
			<div class="dropdown">
				<button class="dropbtn" style="margin-right:10px;">Transaction</button>
				<div class="dropdown-content" style="overflow: visible;">
				<form action="<%=request.getContextPath() %>/DepositPage" method="post" target="customer">
				<input type="submit" value="Deposit" class="clr"/>
			</form>
			<form action="<%=request.getContextPath() %>/WithdrawRequestPage" method="post" target="customer">
				<input type="submit" value="Withdraw" class="clr"/>
			</form>
			<form action="<%=request.getContextPath() %>/TransferPage" method="post" target="customer">
				<input type="submit" value="Transfer" class="clr"/>
			</form>
			<form action="<%=request.getContextPath() %>/TransactionLimitPage" method="post" target="customer">
				<input type="submit" value="Statement" class="clr"/>
			</form>
				</div>
				</div>
			<form action="<%=request.getContextPath() %>/SetRequestAccountStatus" method="post" target="customer" style="margin-right:10px;">
			<input type="submit" value="Alter AccountStatus" class="input"/>
			</form>
			<form action="<%=request.getContextPath() %>/UpdatePasscode" method="post" target="customer" style="margin-right:10px;">
			<input type="submit" value="Update Passcode" class="input"/>
			</form>
	</div>			
</menu>
<iframe src="views/bankingprototype/customer/Customer.jsp" name="customer" height="100%" width="100%" style="position:fixed;top:240px;background-color:Beige;border:none;"></iframe>

</body>
</jsp>