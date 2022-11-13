<!DOCTYPE jsp>
<jsp>
<head>
<meta charset="UTF-8">
<title>my Details</title>
<style>

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
	height: 100%;
	
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
</head>
<body >
<!--
<iframe src="views/bankingprototype/customer/Userinfo.jsp" name="user" height="100%" width="50%" style="position:fixed;"></iframe>
  
<iframe  src ="views/bankingprototype/customer/UpdateUser.jsp" height="100%" width="50%" style="position:fixed;top:50%"></iframe>
-->
<!--  
<iframe  src ="views/bankingprototype/customer/Customerinfo.jsp" height="100%" width="100%" style="position:fixed;left:50%"></iframe>

<iframe  src ="views/bankingprototype/customer/UpdateCustomer.jsp" height="50%" width="100%" style="position:fixed;left:50%;top:50%;"></iframe>
-->

	<ul class="topnav">
	
		<li>
			<form action="<%=request.getContextPath() %>/CustomerHomePage" target="_parent">
			<i class='fas fa-house-user' style='color:white;'><input type="submit" value="Home" class="dropbtn"></i>
			</form>
			
		</li>
		

		<!-- 
		li>
		.nbody {
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	padding: 10px;
	background: white;
	linear-gradient
	(120deg,#2980b9,
	#8e44ad);
	linear-gradient
	(115deg,
	#56d8e4
	10%,
	#9f01ea
	90%);
}
		.flex-container {
	display: flex;
	background-color: DodgerBlue;
	width: 0px;
}
			<form action="/UpdatePasscode" method="post" target="customer" style="margin-right:10px;">
			<input type="submit" value="Update Passcode" class="input"/>
			</form>	
			</li>
		<li><form action="/MyDetailsHome" method="post" target="customer" style="margin-right:10px;">
				<input type="submit" value="MyInfo"  />
			</form></li>
		<form action="Logout" method="post" style="position:fixed;top:5px;right:50px;">
<input type="submit" value="Logout" class="top">
</form>
		
			<div class="flex-container" class="topnav" >
		<menu style="position: fixed; left: 550px;top:45px;" >
			<form action="/TransactionHome" method="post" target="customer">
			<input type="submit" value="Transaction"/>
			</form>-->
			
			<li>
			<form action="<%=request.getContextPath()%>/SetRequestAccountStatus"
				method="post" target="customer">
				<i class='fas fa-landmark' style='color:white;'><input type="submit" value="Request" class="dropbtn" /></i>
			</form>
		</li>
		
		<li><div class="dropdown">
			<i class='fas fa-dollar-sign' style='font:size:20px;color:white;'>	<button class="dropbtn">Transaction</button></i>
				<div class="dropdown-content" style="overflow: visible;">
					<form action="<%=request.getContextPath()%>/DepositPage"
						method="post" target="customer">
					<i class='fas fa-piggy-bank drpcnt' >	<input type="submit" value="Deposit" class="bgnone"/></i>
					</form>
					<form action="<%=request.getContextPath()%>/WithdrawRequestPage"
						method="post" target="customer">
					<i class='fas fa-hand-holding-usd drpcnt' >	<input type="submit" value="Withdraw" class="bgnone"/>
					</i>
					</form>
					<form action="<%=request.getContextPath()%>/TransferPage"
						method="post" target="customer">
					<i class='fas fa-donate drpcnt'>	<input type="submit" value="Transfer" class="bgnone"/></i>
					</form>
					<form action="<%=request.getContextPath()%>/TransactionLimitPage"
						method="post" target="customer" style="width: 100%;">
					<i class='fas fa-receipt drpcnt'><input type="submit" value="Statement" class="bgnone" /></i>
					</form>
				</div>
			</div></li>

		

		<!--  <li >
			<div class="dropdown" style="position: fixed; right: 50px;">
				<button class="dropbtn">Profile</button>
				<div class="dropdown-content" style="overflow: visible;">
					<form action="%=request.getContextPath()%>/MyDetailsHome"
						method="post" target="customer" style="width: 100%;">
						<input type="submit" value="MyInfo"
							style="width: 100%; border: none; font-size: 25px; background: none; color: white;" />
					</form>
					<form action="%=request.getContextPath()%>/UpdatePasscode"
						method="post" target="customer"  style="width: 100%;">
						<input type="submit" value="Reset"
							style="width: 100%; border: none; font-size: 25px; background: none; color: white;" />
					</form>
					<form action="Logout" method="post"  style="width: 100%;">
						<input type="submit" value="Logout"
							style="width: 100%; border: none; font-size: 25px; background: none; color: white;">
					</form>
				</div>
			</div>
		</li>-->
		</ul>
		
</body>
</jsp>