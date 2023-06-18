<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="icon" href="images/logo/e.png">
    <title>STARFLIX🎬</title>
<header>
        <div class="logo">
        <img src="images/logo/e.png" alt="">
        <h3>STARFLIX</h3>
</header>
</head>
<body>
<style>

body {
	background-color : #4F709C;
}

.outer-box {
	margin : auto;
	width : 30%;
	background-color : #242322;	
	padding : 30px;
	margin-top : 150px;
	border-radius : 20px;
	border : 5px solid teal;
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
	background-color : teal;
	border : none;
}

#but:hover {
	border: 2px solid black;
	background-color :#cc9d00;
}
   
</style>

</head>
<body>

<form action="register" method="post">
<div class= "outer-box">
	<div id="heading">REGISTRATION</div>
	
	<div id="uname-text">fullname</div>
	<input type="text" id="fname" name="fname"/>
	<div id="uname-text">Email ID</div>
	<input type="text" id="email" name="email"/>
    <div id="uname-text">username</div>
	<input type="text" id="uname" name="uname"/>
	<div id="uname-text">Password</div> 
	<input type="password" id="uname" name="pword"/>
	<div>
		<input type="reset" id="but"/>
		<input type="submit" value = "Submit" id="but" style="margin-right : 90px"/>	
	</div>
</div>
</form>


</body>
</html>