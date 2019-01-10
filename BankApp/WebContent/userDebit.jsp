<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Debit</title>

<style>
body {
	margin: 0;
	padding: 0;
	text-align: center;
	background: #000000;
	background-size: cover;
	background-position: center;
	font-family: sans-serif;
}

.contact-title {
	margin-top: 100px;
	color: #fff;
	text-transform: uppercase;
	transition: all 4s ease-in-out;
}

.contact-title h1 {
	font-size: 32px;
	line-height: 10px;
}

.contact-title h2 {
	font-size: 16px;
}

form {
	margin-top: 50px;
	transition: all 4s ease-in-out;
}

.form-control {
	width: 600px;
	background: transparent;
	border: none;
	outline: none;
	border-bottom: 1px solid gray;
	color: #fff;
	font-size: 18px;
	margin-bottom: 16px;
}

input {
	height: 45px;
}

form .submit {
	background: #C71585;
	border-color: transparent;
	color: #fff;
	font-size: 20px;
	font-weight: bold;
	letter-spacing: 2px;
	height: 50px;
	margin-top: 20px;
}

form .submit:hover {
	background-color: #00FA9A;
	cursor: pointer;
}

.contact {
	background: #C71585;
	border-color: transparent;
	color: #fff;
	font-size: 30px;
	font-weight: bold;
	letter-spacing: 2px;
	height: 70px;
	margin-top: 0px;
}

.footer {
	position: fixed;
	text-align: center;
	bottom: 0px;
	width: 100%;
}
</style>
</head>
<body>
	<div class="contact"></div>
	<div class="contact-title">
		<h1>Wanna Withdraw Some Money?</h1>
		<h2>Debit From Your Account</h2>
	</div>
	<div class="contact-form">

		<form id="contact-form" method="post" action="userDebit">
			<input name="accno" type="text" class="form-control"
				placeholder="Your Account" required><br> <input
				name="password" type="password" class="form-control"
				placeholder="Your Password" required><br> <input
				name="amount" type="text" class="form-control"
				placeholder="Your Amount" required><br> <input
				type="submit" class="form-control submit" value="Submit">
		</form>
	</div>
	<div class="footer" style="color: #fff;">
		<%
			if (request.getAttribute("message") != null) {
				out.println("<h1><center>" + request.getAttribute("message") + "</center></h1>");
			}
		%>

	</div>
</body>
</html>