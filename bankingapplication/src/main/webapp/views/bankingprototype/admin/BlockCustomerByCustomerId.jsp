<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BlockCustomer</title>
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
<h1>Block Customer</h1>
<form action="<%=request.getContextPath() %>/blockCustomerProcess" method="post">
<div>
Customer Id:<input type="number" name="customerId" required>
</div>
<div>
<input type="submit" value="submit">
</div>
<p style="color:red">${blockCustomer }</p>
</form>
</body>
</html>