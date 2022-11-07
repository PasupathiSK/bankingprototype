<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Withdraw Approve</title>
</head>
<body>
<form action="withdrawApprovePage" method="post">
<select name="status">
<option value="approved">approved</option>
<option value="rejected">rejected</option>
</select>
<input type="submit" value="submit">
</form>
</body>
</html>