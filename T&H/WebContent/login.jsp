<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightgreen">
<form action="Signup.jsp" method="post">
If you are new to our Website then please signup
<input type ="submit" value="signup"></br>
</form>

<form action="UserProfile" method="post">
If you are already a user then login</br>
Username:<input type="text" name="username" required>
Password:<input type="text" name="password" required>
<input type ="submit" value="login"></br>
</form>

</body>
</html>