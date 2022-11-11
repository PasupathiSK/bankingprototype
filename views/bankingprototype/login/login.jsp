<!DOCTYPE jsp>
<jsp>
<head>
<meta charset="UTF-8">

<title>Login Page</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath() %>/mycss/myStyle.css">
<style type="text/css">
html{
    height: 100%;
}
body{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: linear-gradient(#141e30, #243b55);
}
.login-box{
    position: absolute;
    top: 50%;
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
.backgr{
background: #EECDA3;  /* fallback for old browsers */
background: -webkit-linear-gradient(to bottom, #EF629F, #EECDA3);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to bottom, #EF629F, #EECDA3); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background-repeat: no-repeat;
height:100vh;
  }

</style>
</head>
<body >
	
		
	<!--	<span style='font-size:250px;'>&#127963;</span>
	  	<div class="imagecontainer">
			<img src="newAvatar.png" class="avatar">
					<div style="height: 10px; display: block;"></div>
			<fieldset class="form">
				<legend>
					<h1>Login</h1>
				</legend>
		</div>-->

	<div align="center">
	<h1 style="font-size:60px;color:pink;">BLA)KPINK BANK</h1>
	<div class="login-box">

             
  <a>     
		<form action="<%=request.getContextPath() %>/login" method="post" >
			

				   <div class="user-box">
				   					<flabel><b style="font-size:20px;"> User Id  </b></flabel>
					<input type="tel" name="customerId" value="1"placeholder="123"  >

				</div>
				
				   <div class="user-box">
				   										<flabel style="font-size:20px;"> <b>Passcode </b></flabel>
					<input type="password" name="passcode" value="Pasu@143"placeholder="xxx@xxxl" >

				</div>
				<a><input type="submit" value="Login" style="border:none;font-size:35px;background:transparent;color:pink"></a>
	
			<p style="color:red;">${message }</p>
			
		</form>
	
		</a>  
	</div>
	</div>
	
</body>
</jsp>