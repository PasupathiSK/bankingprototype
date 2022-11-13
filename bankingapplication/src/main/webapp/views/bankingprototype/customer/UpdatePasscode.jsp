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
    background:white;
}
.login-box{
    position: absolute;
    top: 40%;
    left: 50%;
    width: 600px;
    padding: 55px;
    transform: translate(-50%,-50%);
    background: rgba(0, 0, 0, 0.5);
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgba(0, 0, 0, 0.6);
    border-radius: 10px;
    background:white;
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
    
    margin-bottom: 30px;
   
    border-top: 1px solid #fff;
    border-left: 1px solid #fff;
    border-right: 1px solid #fff;
    
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

<!-- css bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath() %>/asserts/css/bootstrap.min.css">
<!-- end -->

<!-- script -->

	<script src="../asserts/js/jquery.min.js"></script>
	<script src="../asserts/js/bootstrap.min.js"></script>
<!-- end -->

<meta charset="UTF-8">
<title>UpdatePasscode</title>
</head>
<body>
<div class="container">
	<div class="login-box">
	<h1 style="font-size:30px;color:#DB4437;">RESET</h1>
	<form action="updatePasscodeProcess" method="post">
	<a>	 <div class="user-box">

	<flabel><b style="font-size:20px;">Old Passcode:</b></flabel><input type="text" name="oldPasscode" required/>
	</div>
			 <div class="user-box">

			<flabel><b style="font-size:20px;">New Passcode:</b></flabel> <input type="text" name="newPasscode" required />
		</div>
	 <div class="user-box">
			<flabel><b style="font-size:20px;">Confirm Passcode:</b></flabel> <input type="password" name="confirmPasscode" required/>
		</div>
		</a>
		<div class="container pt-5">
		<input type="submit" value="submit" class="btn btn-success" style="font-size:25px;">
		</div>
		<p style="color:red">${passcode }</p>
	</form>

	</div>
	</div>
</body>
</html>