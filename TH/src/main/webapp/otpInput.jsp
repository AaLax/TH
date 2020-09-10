<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>OTP Validation</title>
</head>
<body>
	
	
	<div class="alert alert-success">
  <strong>Success!</strong> OTP sent to your Email
</div>
	
	<form action="otpValidate" method= "post">
  <div class="form-inline justify-content-center">
    <label for="otpvalidate">Enter OTP :</label>
    <input type="text" class="form-control" placeholder="Enter OTP" name="otpvalidate">
   <button type="submit" class="btn btn-warning">recover</button>
  </div>
  
 
</form>

</body>
</html>