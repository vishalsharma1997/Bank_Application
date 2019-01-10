<%@page import="org.jboss.logging.Message"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In</title>
<link type="text/css" rel="stylesheet" href="style1.css" />
</head>
<style>
body {
	margin: 0;
	padding: 0;
	background: yellow;
	background-size: cover;
	background-position: center;
	font-family: Gregoria;
	font-weight: bold;
}

::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
	color: #f5f5f5;
	opacity: 1; /* Firefox */
}

:-ms-input-placeholder { /* Internet Explorer 10-11 */
	color: #f5f5f5;
}

::-ms-input-placeholder { /* Microsoft Edge */
	color: #f5f5f5;
}

.Login-box {
	width: 320px;
	height: 450px;
	background: rgba(91, 44, 111, 0.5);
	color: #fff;
	top: 58%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
	padding: 70px 30px;
}

.abc {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	position: absolute;
	top: -50px;
	left: calc(50% - 50px);
}

h1 {
	margin: 0;
	padding: 0 0 20px;
	text-allign: center;
}

.Login-box p {
	margin: 0;
	padding: 0;
	font-weight: bold;
	color: #000;
}

.Login-box input {
	width: 100%;
	margin-bottom: 20px;
}

.Login-box input[type="email"], input[type="password"], input[type="text"]
	{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}

.Login-box input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	background: #4B0082;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;
}

.Login-box input[type="submit"]:hover {
	cursor: pointer;
	background: #39dc79;
	color: #000;
}

.Login-box a {
	text-decoration: none;
	font-size: 14px;
	color: #fff;
}

.Login-box a:hover {
	color: #39dc79;
}

.pagetitle {
	background-color: #530602;
	color: #fff;
	margin-left: 100px;
	margin-right: 100px;
	margin-top: 70px;
	height: 100px;
	line-height: 110px;
}

.contents {
	background-color: #1DEFEF;
	color: #000;
	margin-left: 100px;
	margin-right: 100px;
	padding-top: 10px;
	height: 500px;
	font-size: 25px;
}

</style>
<body>
	<div class="pagetitle">
		<h1>
			<center>Log In</center>
		</h1>
	</div>
	<div class="contents">
		<div class="Login-box">
			<img src="images/abc.jpg" class="abc">
			<form method="post" action="Login">
				<p>Account number:</p>
				<input type="text" placeholder="Enter Your Account No."
					name="accountno" required>
				<p>E-mail Id:</p>
				<input type="email" placeholder="Enter Your E-mail" name="email"
					required>
				<p>Password</p>
				<input type="password" placeholder="Enter Your Password"
					name="password" required> <input type="submit"
					name="submit" value="Login"> <a href="reset.jsp">Forget
					Password</a>
			</form>
		</div>
	</div>

	<%
		
		if (request.getAttribute("message") != null) {
			out.print("<br><h1><center>"+request.getAttribute("message")+"</center></h1>");
			if(request.getAttribute("message").toString().equals("Logged in successfully!"))
			{
				out.print("<h1>Redirecting ... </h1>");
				request.getRequestDispatcher("TransferMoney.jsp").forward(request, response);
			}
		}
	%>
</body>
</html>