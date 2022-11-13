<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CustomerHome</title>
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
  height: 270px;
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

				
	<ul class="topnav">

			<h1 style="position:fixed;left:400px;font-size:110px;color:white	;">BLA)KPINK BANK</h1>	

		<!-- 
		
		<h1 style="position:fixed;left:0px;color:red;">WELCOME</h1>
			<h1 style="position:fixed;left:550px;font-size:60px;color:#DB7093;">BLA)KPINK BANK</h1
		
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
			
			
			<div class="footer">
 <p>Author: Hege Refsnes<br>
  <a href="mailto:hege@example.com">hege@example.com</a></p>
</div>
			
			</form>-->
	


		<li>
			<div class="droptown">
				<button class="dropptn">
					<span
						style='font-size: 80px; '>&#128100;</span>
				</button>
				<div class="droptown-content" style="overflow: visible;">
					<form action="<%=request.getContextPath()%>/MyDetailsHome"
						method="post" target="customer" style="width: 100%;">
					<i class='fas fa-user-edit' style="color:white;">	<input type="submit" value="MyInfo"
							style=" border: none; font-size: 25px; background: none; color: white;" /></i>
					</form>
					<form action="<%=request.getContextPath()%>/UpdatePasscode"
						method="post" target="customer" style="width: 100%;">
					<i class='fas fa-key' style="color:white;">	<input type="submit" value="Change Password"
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
	
		

	<iframe src="views/bankingprototype/customer/MyDetailsHome.jsp" height="100%"  
		style="position: fixed;top:120px;width:15%; border: none	;"></iframe>
	<iframe src="views/bankingprototype/customer/Customer.jsp"
		name="customer" height="100%"  
		style="position:fixed; left:15% ;width:85% ;top:120px; border: none; background: #141e30;"></iframe>

</body>

</html>