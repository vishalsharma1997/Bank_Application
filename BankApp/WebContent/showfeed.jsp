<%@page import="com.app.bo.CustomerBO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User's Feedbacks</title>

<style>
body {
	margin: 0;
	padding: 0;
	background: yellow;
	background-size: cover;
	font-family: Gregoria;
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

td {
	text-align: center;
}
</style>
</head>
<body>
	<div class="pagetitle">
		<center>
			<h1>User's Feedbacks</h1>
		</center>
	</div>
	<div class="contents">
		<table border="1" width="100%">
			<tr>
				<td>Sl. No.</td>
				<td>Account Number</td>
				<td>User Name</td>
				<td>Feedback</td>
			</tr>
		</table>
		<%
			CustomerBO bo = new CustomerBO();
			out.print("" + bo.getAllUsersFeedBack());
		%>
	</div>

</body>
</html>