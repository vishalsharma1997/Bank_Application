<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transfer Money</title>
<style>
body {
	margin: 0;
	padding: 0;
	background: yellow;
	background-size: cover;
	font-family: Arial;
}

.box {
	position: absolute;
	top: 55%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 400px;
	padding: 40px;
	background: rgba(0, 0, 0, .8);
	box-sizing: border-box;
	box-shadow: 0 15px 25px rgba(0, 0, 0, .5);
	border-radius: 10px;
}

.box h1 {
	margin: 0 0 30px;
	padding: 0;
	color: #fff;
	text-align: center;
}

.box h2 {
	margin: 0 0 30px;
	padding: 0;
	color: #fff;
	text-align: center;
}

.box .inputBox {
	position: relative;
}

.box .inputBox input {
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	color: #fff;
	letter-spacing: 1px;
	margin-bottom: 30px;
	border: none;
	border-bottom: 1px solid #fff;
	outline: none;
	background: transparent;
}

.box .inputBox label {
	position: absolute;
	top: 0;
	left: 0;
	letter-spacing: 1px;
	padding: 10px 0;
	font-size: 16px;
	color: #fff;
	pointer-events: none;
	transition: .5s;
}

.box .inputBox input:focus ~ label, .box .inputBox input:valid ~ label {
	top: -18px;
	left: 0;
	color: #03a9f4;
	font-size: 12px;
}

.box input[type="submit"] {
	background: transparent;
	border: none;
	outline: none;
	color: #fff;
	background: #03a9f4;
	padding: 10px 20px;
	cursor: pointer;
	border-radius: 5px;
}

.pagetitle {
	background-color: #530602;
	color: #fff;
	height: 130px;
	margin-top: 50px;
	line-height: 130px;
}

.contents {
	background-color: #1DEFEF;
	color: #000;
	padding-top: 10px;
	height: 500px;
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
	<div class="pagetitle">
		<center>
			<h1>Transfer Money</h1>
		</center>
	</div>
	<div class="contents">
		<div class="box">
			<h1>Transfer Money</h1>
			<form action="TransferMoney" method="post">
				<div class="inputBox">
					<input type="text" name="recvAccno" required> <label>Account
						Number of Receiver</label>
				</div>
				<div class="inputBox">
					<input type="text" name="amount" placeholder="0" required>
					<label>Amount</label>
				</div>
				<div class="inputBox">
					<input type="password" name="password" required> <label>Enter
						Your Password</label> <input type="submit" value="Submit">
				</div>
			</form>
		</div>
	</div>
	<br>
	<br>
	<br>
	<div class="footer">
		<%
			if (request.getAttribute("message") != null) {
				out.println("<h1><center>" + request.getAttribute("message") + "</center></h1>");
			}
		%>

	</div>
</body>
</html>