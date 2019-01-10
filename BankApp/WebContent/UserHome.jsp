<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Home</title>

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
.menudropdown2{
 width:80%;
height:100px;
margin:0px auto;
margin-top: 25px;
}
 .menudropdown2 ul{
  padding:0px;
}
 .menudropdown2 ul li{
  background-color:black;
    color:white;
    width:300px;
    height:55px;
    line-height:50px;
    font-size:30px;
    text-allign:center;
   list-style:none;
   opacity:0.8;
}

.menudropdown2 ul li ul{
   display:none;
}

.menudropdown2 ul li:hover > ul{
   display:block;
}

.menudropdown2 ul li:hover{
  background-color:#32CD32;
  opacity:1;
}

.menudropdown2 ul li ul li{
  position:relative;
}

.menudropdown2 ul li ul li ul{
 position:absolute;
  left:200px;
   top:0px;
}
</style>

</head>
<body>
	<div class="pagetitle">
		<center>
			<h1>Welcome User</h1>
		</center>
	</div>
	<div class="contents">
	<center><div class = "menudropdown2">
		<ul>
                <li><a href="register.jsp">Create Account</a></li>
                <li><a href="userDebit.jsp">Debit</a></li>
                <li><a href="userDeposit.jsp">Deposit</a></li>
                <li><a href="transfer.jsp">Transfer</a></li>
                <li><a href="loan.jsp">Loan</a></li>
                <li><a href="txn.jsp">All Transactions</a></li>
                <li><a href="atm.jsp">Request For ATM</a></li>
                <li><a href="feedback.jsp">Feedback</a></li>
            </ul>
		</div>
		</center>
	</div>
</body>
</html>