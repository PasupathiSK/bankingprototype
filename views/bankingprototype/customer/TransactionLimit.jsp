<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
html{
    height: 100%;
}
body{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: #778899;
    linear-gradient(#141e30, #243b55);
}
.login-box{
    position: absolute;
    top: 40%;
    left: 50%;
    width: 600px;
    padding: 80px;
    transform: translate(-50%,-50%);
    background: rgba(0, 0, 0, 0.5);
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgba(0, 0, 0, 0.6);
    border-radius: 10px;
}
.login-box h2{
    margin: 0 0 30px;
    padding: 0;
    color: #fff;
    text-align: center;
}
.login-box .user-box{
    position: relative;
}
.login-box .user-box input{
    width: 100%;
    padding: 10px 0;
    font-size: 16px;
    color: #fff;
    margin-bottom: 30px;
    border: none;
    border-bottom: 1px solid #fff;
    outline: none;
    background: transparent;
}
.login-box .user-box label{
    position: absolute;
    top:0;
    left: 0;
    padding: 100px 0;
    font-size: 16px;
    color: #fff;
    pointer-events: none;
    transition: .5s;
}
.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label{
    top: -20px;
    left: 0;
    color: #03e9f4;
    font-size: 12px;
}
.login-box form a{
    position: relative;
    display: inline-block;
    padding: 30px 20px;
    color: #03e9f4;
    font-size: 16px;
    text-decoration: none;
    text-transform: uppercase;
    overflow: hidden;
    transition: .5s;
    margin-top: 40px;
    letter-spacing: 4px;
}
.login-box a:hover{
   
    border-radius: 5px;
    box-shadow: 0 0 15px #03e9f4,
                0 0 25px #03e9f4,
                0 0 50px #03e9f4,
                0 0 100px #03e9f4;
}
 background: #03e9f4;
    color: #fff;
.login-box a span{
    position: absolute;
    display: block;
}
.login-box a span:nth-child(1){
    top: 0;
    left: -100%;
    height: 2px;
    width: 100%;
    background: linear-gradient(90deg,transparent,#03e9f4);
    animation: btn-anim1 1s linear infinite;
}
@keyframes btn-anim1{
    0%{
        left: -100%;
    }
    50%,100%{
        left: 100%;
    }
}
.login-box a span:nth-child(2){
    top: -100%;
    right: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(180deg,transparent,#03e9f4);
    animation: btn-anim2 1s linear infinite;
    animation-delay: .25s;
}
@keyframes btn-anim2{
    0%{
        top: -100%;
    }
    50%,100%{
        top: 100%;
    }
}
.login-box a span:nth-child(3){
    bottom: 0;
    right: -100%;
    width: 100%;
    height: 2px;
    background: linear-gradient(270deg,transparent,#03e9f4);
    animation: btn-anim3 1s linear infinite;
    animation-delay: .5s;
}
@keyframes btn-anim3{
    0%{
        right: -100%;
    }
    50%,100%{
        right: 100%;
    }
}
.login-box a span:nth-child(4){
    bottom: -100%;
    left: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(360deg,transparent,#03e9f4);
    animation: btn-anim4 1s linear infinite;
    animation-delay: .75s;
}
@keyframes btn-anim4{
    0%{
        bottom: -100%;
    }
    50%,100%{
        bottom: 100% ;
    }
}
</style>
<meta charset="UTF-8">
<title>Transaction Limit</title>
</head>
<body>
	<div class="login-box">
	<h1 style="font-size:30px;color:pink;">STATEMENT</h1>
<a>
	<form action="TransactionDetailsPage" method="post"
		target="customer">
				<div class="user-box">

			<flabel><b style="font-size:20px;">Account Number:</b></flabel> <select name="accountNumber" style="border:none;width:100%;background:none;color:white;font-size:16px;padding:10px;">
				<c:forEach var="account" items="${customerIdToAllAccount }">
					<option value="${ account.getAccountNumber() }">${account.getAccountNumber() }</option>
				</c:forEach>
			</select>
			</div>
			<div>
				<flabel><b style="font-size:20px;">Number Of Days:</b></flabel> <select name="days" style="border:none;width:100%;background:none;color:white;font-size:16px;padding:10px;">
					<option value="7">7</option>
					<option value="15">15</option>
				</select>
			</div>
			<a>
			<input type="submit" value="submit" style="border:none;font-size:35px;background:transparent;color:pink">
			</a>
				</form>
				</a>
	</div>
</body>
</html>