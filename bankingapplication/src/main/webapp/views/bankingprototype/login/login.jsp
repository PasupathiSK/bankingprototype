<!DOCTYPE jsp>
<jsp>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style type="text/css">
.background {
	background-size: cover;
	background-image: url('back.jpg');
}

.imagecontainer {
	text-align: center;
	margin: 24px o 12px 0;
}

.avatar {
	width: 10%;
	border-radius: 20%;
}

.form {
	width: 25%;
	border-color: black;
	background-image: url('fImage.jpg');
	border-color: black;
	border-size:2;
	height: 400px;
	display: block;
}

.center {
	text-align: center;
}

.height {
	height: 50px;
	display: block;
}

.length {
	height: 50px;
	display: block;
}

fLabel {
	width: 100px;
	display: inline-block;
}
.backgr{
background: #EECDA3;  /* fallback for old browsers */
background: -webkit-linear-gradient(to bottom, #EF629F, #EECDA3);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to bottom, #EF629F, #EECDA3); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background-repeat: no-repeat;
height:100vh;
  }
  
</style>
</head>
<body class="backgr">
	<div class="center">
		<h1>BLA)KPINK BANK</h1>
		<span style='font-size:250px;'>&#127963;</span>
	<!--  	<div class="imagecontainer">
			<img src="newAvatar.png" class="avatar">
		</div>-->
	</div>
	<div align="center">
		<div style="height: 10px; display: block;"></div>
		<form action="<%=request.getContextPath() %>/login" method="post" class="box">
			<fieldset class="form">
				<legend>
					<h1>Login</h1>
				</legend>
				<div class="height"></div>
				<div>
					<flabel> <b>User Id : </b></flabel>
					<input type="number" name="customerId" value="1"placeholder="123" class="inputBox" />
				</div>
				<div class="height"></div>
				<div>
					<flabel> <b>Passcode :</b></flabel>
					<input type="password" name="passcode" value="Pasu@143"placeholder="xxx@xxxl" class="inputBox"/>
				</div>
				<div class="length"></div>
				<div class="length"></div>
				<input type="submit"  value="submit">
			</fieldset>
			<p style="color:red;">${message }</p>
		</form>
	</div>
</body>
</jsp>