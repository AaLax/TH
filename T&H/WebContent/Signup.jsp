<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightgreen">
<form action="SignUpDao" method="post">

Please add your correct details as this details will help us to provide better service </br></br>

FirstName:    &emsp;&emsp;&emsp; <input type ="text" name="firstname" required></br>
LastName:     &emsp;&emsp;&emsp; <input type = "text" name="lastname" required></br>
Email:        &emsp;&emsp;&emsp;&emsp;&emsp; <input type = "email" name="email" required></br>
Mobile No:    &emsp;&emsp;&emsp; <input type = "tel" name ="mobile" required></br>
DOB :         &emsp;&emsp;&emsp;&emsp;&emsp; <input type = "date" name = "dob" required></br>
SetPassword:  &emsp;&nbsp; <input type ="password" name="password" required></br>
ConfirmPassword:<input type ="password" name="cpassword"required></br></br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type ="submit" value="Signup"></br>




</form>
</body>
</html>