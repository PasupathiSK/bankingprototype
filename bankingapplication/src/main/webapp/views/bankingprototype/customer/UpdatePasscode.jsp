<!DOCTYPE html>
<html>
<head>
<style type="text/css">
fLabel{
width:100px;
display:inline-block;
}
input[type=text], select {
  width: 40%;
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
<meta charset="UTF-8">
<title>UpdatePasscode</title>
</head>
<body>
	<h1>Update Passcode</h1>
	<form action="updatePasscodeProcess" method="post">
	<div>
	<flabel>Old Passcode:</flabel><input type="text" name="oldPasscode"/>
	</div>
		<div>
			<flabel>New Passcode:</flabel> <input type="text" name="newPasscode"  />
		</div>
		<div>
			<flabel>Confirm Passcode:</flabel> <input type="password" name="confirmPasscode"/>
		</div>
		<div>
		<input type="submit" value="submit">
		</div>
		<p style="color:red">${passcode }</p>
	</form>
</body>
</html>