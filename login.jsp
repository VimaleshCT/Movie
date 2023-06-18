<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<style>

body {
	background-color : #73716d;
}

.outer-box {
	margin : auto;
	width : 30%;
	background-color : #242322;	
	padding : 30px;
	margin-top : 150px;
	border-radius : 20px;
	border : 5px solid #ffc400;
	color : white;
}

#uname-text {
	margin-top : 10px;
}

#uname {
	width : 98%;
	margin-top : 10px;
}

#heading {
	text-align : center;
	font-size : 24px;
	font-weight : 1000;
}

#but {
	width : 45%;
	margin-top : 30px;
	height : 30px;
	background-color : #ffc400;
	border : none;
}

#but:hover {
	border: 2px solid black;
	background-color :#cc9d00;
}

</style>

</head>
<body>

<form action="loginservlet" method="post">
<div class= "outer-box">
	<div id="heading">LOGIN</div>
	<div id="uname-text">Username</div>
	<input type="text" id="uname" name="uname"/>
	<div id="uname-text">Password</div> 
	<input type="password" id="uname" name="pword"/>
	<div>
		<input type="reset" id="but"/>
		<input type="submit" value = "Submit" id="but" style="margin-left : 30px"/>	
	</div>
</div>
</form>


</body>
</html>