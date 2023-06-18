<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="login.jsp">
		<%
			String username = null;
			if(request.getAttribute("uname") != null) {
				username = (String) request.getAttribute("uname");
			}
		%>
		<div style="color : red">Sorry <%= username %>, you have failed to logged in :(</div>
		<input type="submit" value = "Back"/>
	</form>
</body>
</html>