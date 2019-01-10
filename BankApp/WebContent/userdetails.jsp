<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.app.entity.Customer,com.app.bo.CustomerBO,java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Details</title>

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
</style>
</head>
<body>
<div class="pagetitle">
		<center>
			<h1>User Details</h1>
		</center>
	</div>
	<div class="contents">
	<%
		List<Customer> list = new CustomerBO().getAllCustomers();
		for (Customer obj : list) {
			out.println(obj);
			out.print("<br><br>");
		}
	%>
</div>
</body>
</html>