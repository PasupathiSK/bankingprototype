<!DOCTYPE jsp>
<jsp>
<head>
<meta charset="UTF-8">
<style>
.flex-container {
  display: flex;
  height:100px;
  background-color: DodgerBlue;
}
.height {
  height: 100px;
  width: 100px;
  background-color: powderblue;
}
input[type=submit] {
  width: 100%;
  padding: 12px 20px;
  margin: 0px 0;
  box-sizing: border-box;
  border-color:yellow;
  background-color: #3CBC8D;
  color: white;
}


.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: #3e8e41;
}
</style>
<title>Admin Menu</title>
</head>
<body class="flex-container">
		<menu>
			<div class="flex-container" style="position:fixed;left:40px;">
				<form action="../../../UserInfoByIdPage" method="post" target="admin">
					<input type="submit" value="User Info"/>
					</form>
                <form action="../../../TransactionDetailsByIdPage" method="post" target="admin">
				<input type="submit" value="Statement" />
				</form>

                <form action="../../../AllAccountInfoPage" method="post" target="admin">
				<input type="submit" value="Account Info" />
				</form>


               <form action="../../../ActiveAndDeactivePage" method="post" target="admin">
				<input type="submit" value="Account Status" />
				</form>

               <form action="../../../BlockAccountPage" method="post" target="admin">
				<input type="submit" value="Block Account" />
				</form>

                <form action="../../../BlockCustomerByCustomerIdPage" method="post" target="admin">
				<input type="submit" value="Bolck Customer" />
				</form>
<div class="dropdown">
          <!--      <form action="../../../InsertHomePage" method="post" target="admin">
				<input type="submit" value="Add User" />
				<a href="jsdflk.html">fjksjkf</a>
				</form>-->
  <button class="dropbtn">Dropdown</button>
  <div class="dropdown-content">
  <a href="#">Link 1</a>
  <a href="#">Link 2</a>
  <a href="#">Link 3</a>
</div>
				</div>
			</div>
		</menu>
		<iframe src="views/bankingprototype/admin/Admin.jsp" name="admin" height="100%" width="100%" style="position:fixed;top:130px"></iframe>
		
		<iframe src="views/bankingprototype/admin/AdminMenu.jsp" name="menu" height="20px" width="60%" style="position:absolute;left:20px;"></iframe>
</body>
</jsp>