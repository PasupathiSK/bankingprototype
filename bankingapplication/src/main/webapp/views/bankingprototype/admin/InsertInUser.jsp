<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inset In User</title>
<style>
fLabel{
width:100px;
display:inline-block;
}
input[type=text], select {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=number], select {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 20%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>
	<h1>Insert In User</h1>
	<form action="<%=request.getContextPath() %>/insertInUserProcess" method="post">
		<div>
			User Name:<input type="text" name="name" required/>
		</div>
		<div>
			Passcode:<input type="password" name="passcode" required/>
		</div>
		<div>
			Role: <select name="role">
				<option value="admin">admin</option>
				<option value="customer">customer</option>
			</select>
		</div>
		<!-- 	<div>
			CustomerId : <input type="number" name="customerId" />
		</div> 
		<div>
			Name : <input type="text" name="name" />
		</div>
		-->
		<div>
			Mobile : <input type="tel" name="mobile" maxlength="10" required/>
		</div>
		<div>
			Email : <input type="email" name="email" required/>
		</div>
		<div>
			Date Of Birth: <input type="date" name="dateOfBirth" required/>
		</div>
		<div>
			Aadhar : <input type="number" name="aadhar" required/>
		</div>
		<div>
			Pan Number : <input type="text" name="panNumber" required/>
		</div>
		<div>
			Zipcode : <input type="number" name="zipcode" required/>
		</div>
		<div>
			Status: <select name="status">
				<option value="active">active</option>
				<option value="inactive">inactive</option>
			</select>
		</div>
		<div>
		<input type="submit" value="submit">
		</div>
	</form>
</body>
</html>