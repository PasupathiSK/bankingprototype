<!DOCTYPE jsp>
<jsp>
<head>
<meta charset="UTF-8">
<title>Active and Deactive Account</title>
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
	<h1>Active and Deactive Account</h1>
	<form action="UpdateAccountStatus" method="post">
		<div>
			CustomerId:<input type="number" name="customerId" required/>
		</div>
		<div>
			Account Number: <input type="number" name="accountNumber" required/>
		</div>
		<div>
			Status Approve: <select name="status">
				<option value="accept">accept</option>
				<option value="reject">reject</option>
			</select>
		</div>
		<div>
		<input type="submit" value="submit">
		</div>
	</form>
</body>
</jsp>