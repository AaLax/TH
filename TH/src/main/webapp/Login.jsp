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


<title>Login Here</title>
</head>
<body>

	<div class="container-fluid">

		<div class="card bg-info text-white">
			<div class="card-header">
				<h3>Login</h3>
			</div>
			<div class="card-body">
				<form action="UserProfile" method="post" role="form"
					class="form-horizontal">

					<div class="form-group">
						<label for="username">First Name:</label> <input type="text"
							class="form-control" placeholder="Enter UserName" name="username"
							required="required">
					</div>

					<div class="form-group">
						<label for="password">Password:</label> <input type="password"
							class="form-control" placeholder="Enter Password" name="password"
							required="required">
					</div>


					<div class="form-group form-check">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox"> Remember me
						</label>
					</div>

					<script src="https://www.google.com/recaptcha/api.js" async defer></script>


					<div class="g-recaptcha"
						data-sitekey="6LdCMsUZAAAAABI3dI4ffTISTIhhr5U-WFr4DhD6"></div>
					<br />
					<!-- <input type="submit" value="Submit"> -->

					<button type="submit" class="btn btn-warning">Submit</button>
				</form>
			</div>
			<div class="card-footer"></div>
		</div>
	</div>

	<div>
		<div class="container">

			<form action="forgotacc" method="post" role="form"
				class="form-inline justify-content-center">
				<h3>Forgot Account?</h3>
				<div class="form-group">
					<label for="forgotemail"></label> <input
						type="email" class="form-control"
						placeholder="Enter Registered Email" name="forgotemail"
						required="required">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>

	<div>

		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#myModal">
			<h3>New User ?</h3>

		</button>

		<!-- The Modal -->
		<div class="modal" id="myModal">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">



					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">Sign Up</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<form action="SignUpDao" method="post">


							<div class="container">

								<div class="form-group">
									<label for="firstname">First Name:</label> <input type="text"
										class="form-control" placeholder="Enter Firstname"
										name="firstname" required="required">
								</div>

								<div class="form-group">
									<label for="lastname">Last Name:</label> <input type="text"
										class="form-control" placeholder="Enter Lastname"
										name="lastname" required="required">
								</div>

								<div class="form-group">
									<label for="email">Email address:</label> <input type="email"
										class="form-control" placeholder="Enter email" name="email"
										required="required">
								</div>

								<div class="form-group">
									<label for="mobile">Mobile no:</label> <input type="tel"
										class="form-control" placeholder="Enter MobileNo"
										name="mobile" required="required">
								</div>

								<div class="form-group">
									<label for="date">Date of Birth:</label> <input type="date"
										class="form-control" placeholder="Enter DOB" name="dob"
										required="required">
								</div>

								<div class="form-group">
									<label for="password">Set Password:</label> <input
										type="password" class="form-control"
										placeholder="Enter Password"  name="password"
										required="required">
								</div>

								<div class="form-group">
									<label for="cpassword">Confirm Password:</label> <input
										type="password" class="form-control"
										placeholder="Enter Confirm password" name="cpassword"
										required="required">
								</div>

								<div class="form-group form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox"> Remember me
									</label>
								</div>

								<script src="https://www.google.com/recaptcha/api.js" async
									defer></script>


								<div class="g-recaptcha"
									data-sitekey="6LdCMsUZAAAAABI3dI4ffTISTIhhr5U-WFr4DhD6"></div>
								<br />
								<!-- <input type="submit" value="Submit"> -->

								<button type="submit" class="btn btn-success">Submit</button>

							</div>
						</form>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>

				</div>
			</div>
		</div>
	</div>


</body>
</html>