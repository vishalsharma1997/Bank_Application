<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to the Bank</title>
<style>
.pagetitle {
	background-color: #530602;
	color: #fff;
	margin-left: 50px;
	margin-right: 50px;
	margin-top:50px;
	height: 130px;
	line-height: 10px;
}

.contents {
	background-color: #1DEFEF;
	color: #000;
	margin-left: 50px;
	margin-right: 50px;
	padding-top: 10px;
	height: 500px;
	font-size: 25px;
}
p {
	margin-left:20px;
	margin-right:20px;
}
body {

	padding: 0;
	background: yellow;
	background-size: cover;
	background-position: center;
	font-family: Gregoria;
	font-style: italic;
	font-weight: bold;
}

button {
	float: right;
	background: purple;
	color: white;
	border-radius: 0 5px 5px 0;
	cursor: pointer;
	position: relative;
	padding: 7px;
	font-family: sans-serif;
	border: none;
	font-size: 16px;
	Block-spacing: 0.5px;
}

</style>
</head>
<body>
	<div class="pagetitle">
		<table width="100%">
			<td><img src="images/bank_logo.jpg" width="100" height="100"
				style="padding-left: 10px; margin-top: 15px;"></td>
			<td align="center"><h1><u>Welcome to the Bank</u></h1></td>
			<td><a href = "SignUp.jsp"><button class="button">Sign Up</button></a></td>
			<td><a href = "LoginClassify.jsp"><button class="button">Log In</button></a></td>
		</table>
	</div>
	<div class="contents">
		<table width ="100%" style = "margin:10px;">
		<tr>
				<td><img src="images/Bank.jpg" width="350" height="400"></td>
				<td>
					<p>A bank is a financial institution that accepts deposits from
						the public and creates credit. Lending activities can be performed
						either directly or indirectly through capital markets. Due to
						their importance in the financial stability of a country, banks
						are highly regulated in most countries. Most nations have
						institutionalized a system known as fractional reserve banking
						under which banks hold liquid assets equal to only a portion of
						their current liabilities. In addition to other regulations
						intended to ensure liquidity, banks are generally subject to
						minimum capital requirements based on an international set of
						capital standards, known as the Basel Accords.
					</p>
				</td>
			</tr>
		</table>
		<table width="50%" align = "center">
			<tr>
				<td><a href = "TransferMoney.jsp"><button class="button">Transfer Money</button></a></td>
				<td><a href = "AdminLogin.jsp"><button class="button">Admin Login</button></a></td>
			</tr>
		</table>
	</div>
</body>
</html>