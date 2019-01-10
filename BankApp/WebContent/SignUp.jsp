<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
<link type="text/css" rel="stylesheet" href="style1.css" />

<style>
.pagetitle
{
    background-color: #530602;
    color: #fff;
    margin-left: 50px;
    margin-right: 50px;
    height: 130px;
    line-height: 110px;
    
}
.contents
{
    background-color: #1DEFEF;
    color: #000;
    margin-left: 50px;
    margin-right: 50px;
    padding-top:10px;
    height: 380px;
    font-size: 25px;
    
}
body {
	margin: 100px;
	padding: 0;
	background: yellow;
	background-size: cover;
	background-position: center;
	font-family: Gregoria;
	font-style :italic;
	font-weight: bold;
}

.Create account box {
	width: 320px;
	height: 420px;
	background: rgba(0, 0, 0, 0.5);
	color: #fff;
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
	padding: 70px 30px;
}

h1 {
	margin: 0;
	padding: 0 0 20px;
	text-align: center;
	
}

.Create account box p {
	margin: 0;
	padding: 0;
	font-weight: bold;
}

.Create account box input {
	width: 100%;
	margin-bottom: 20px;
}

.Create account box input[type="text"], input[type="text"] {
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}

.Create account box input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	background: #1c8adb;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;
}

.Create account box input[type="submit"]:hover {
	cursor: pointer;
	background: #39dc79;
	color: #000;
}

.Create account box a {
	text-decoration: none;
	font-size: 14px;
	color: #fff;
}

.Create account box a:hover {
	color: #39dc79;
}
</style>


</head>
<body>
	<div class="Create account box">
		<center>
			
			<div class="pagetitle"> <h1>Sign Up</h1> </div>
			<form action="SignUp" method="post">
			<div class ="contents">
				<table>
					<tr>
						<td>Name :</td>
						<td><input name="Name" placeholder="Enter Your Name" required></td>
					</tr>
					<tr>
						<td>Email id :</td>
						<td><input type = "email" name="Email" placeholder="Enter Your Email" required></td>
					</tr>
					<tr>
						<td>Password :</td>
						<td><input type="password" name="Password"  placeholder="Enter Your Password" required></td>
					</tr>
					<tr>
						<td>Confirm Password :</td>
						<td><input type="password" name="Confirm" placeholder="Confirm Your password" required></td>
					</tr>
					<tr>
						<td>Address :</td>
						<td><textarea name="Address" placeholder="Enter Your Address" required></textarea></td>
					</tr>
					<tr>
						<td>Date of Birth :</td>
						<td><input type = "date"name="DOB" placeholder="Enter Your Date of Birth" required></td>
					</tr>
					<tr>
						<td>Contact Number :</td>
						<td><input name="Phone"  placeholder="Enter Your Contact Number" required></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit" value="Sign Up"></td>
					</tr>
				</table>
				</div>
			</form>
			<%
				if (request.getAttribute("message") != null) {
					out.println("<br><h1>"+request.getAttribute("message")+"</h1>");
				}
			%>

		</center>

	</div>
</body>
</html>
