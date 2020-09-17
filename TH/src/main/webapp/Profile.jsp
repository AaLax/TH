
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
<title>Profile page</title>
</head>
<body>

	<h3>Welcome to your profile</h3>
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active" data-toggle="tab"
			href="#home">Home</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#menu1">Book for Event</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#menu2">Organize Events</a></li>
	</ul>

	<!-- Tab panes -->
	<div class="tab-content">
		<div class="tab-pane container active" id="home"></div>
		<div class="tab-pane container fade" id="menu1">

			<pre></pre>
			<div class="card-columns">
				<div class="card" style="width: 275px">
					<img class="card-img-top" src="movies.jpg" alt="Card image">
					<div class="card-body">
						<h4 class="card-title"></h4>
						<p class="card-text"></p>
						<a href="#" class="btn btn-primary">Movies</a>
					</div>
				</div>

				<div class="card" style="width: 275px">
					<img class="card-img-top" src="hotels.jpg" alt="Card image">
					<div class="card-body">
						<h4 class="card-title"></h4>
						<p class="card-text"></p>
						<a href="#" class="btn btn-primary">Hotels</a>
					</div>
				</div>

				<div class="card" style="width: 300px">
					<img class="card-img-top" src="Events1.jpg" alt="Card image">
					<div class="card-body">
						<h4 class="card-title"></h4>
						<p class="card-text"></p>
						<a href="#" class="btn btn-primary">Events</a>
					</div>
				</div>
				<pre></pre>
				<div class="card" style="width: 300px">
					<img class="card-img-top" src="cab.jpg" alt="Card image">
					<div class="card-body">
						<h4 class="card-title"></h4>
						<p class="card-text"></p>
						<a href="#" class="btn btn-primary">Cab Booking</a>
					</div>
				</div>

				<div class="card" style="width: 275px">
					<img class="card-img-top" src="flight.jpg" alt="Card image">
					<div class="card-body">
						<h4 class="card-title"></h4>
						<p class="card-text"></p>
						<a href="#" class="btn btn-primary">Flight</a>
					</div>
				</div>

				<div class="card" style="width: 275px">
					<img class="card-img-top" src="train.jpg" alt="Card image">
					<div class="card-body">
						<h4 class="card-title"></h4>
						<p class="card-text"></p>
						<a href="#" class="btn btn-primary">Train</a>
					</div>
				</div>

			</div>
	
	</div>
	
	<div class="tab-pane container fade" id="menu2">

		<form action="">
			<div class="header" id="myHeader">
				<h4>Customize your event</h4>
			</div>

			<div class="form-group">
				<label for="EventMotive"></label> <input type="text"
					class="form-control" placeholder="Motive of this Event:"
					name="EventMotive" required>
			</div>

			<label for="Location"></label> <select required aria-required="true"
				class="custom-select" id="Location" name="Location">
				<option value="">Event Location</option>
				<option value="Mumbai">Mumbai</option>
				<option value="Delhi">Delhi</option>
				<option value="Bangalore">Bangalore</option>
				<option value="Hyderabad">Hyderabad</option>
				<option value="Pune">Pune</option>
				<option value="Chennai">Chennai</option>
			</select>

			<div class="form-group">
				<label for="NoOfPeople"></label> <input type="number"
					class="form-control" placeholder="No of Expected people"
					name="NoOfPeople">
			</div>

			<div class="slidecontainer">
				<input type="range" min="0" max="50000000" value="50" class="slider"
					id="myRange">
			</div>

			<div class="form-group">
				<label for="date">Event Date:</label> <input type="date"
					class="form-control" placeholder="Event Date" name="date">
			</div>

			<div class="form-group">
				<label for="Time">Event Time:</label> <input type="time"
					class="form-control" placeholder="Event Time" name="Time">
			</div>

			<div class="form-group">
				<label for="Text">Event Duration:</label> <input type="text"
					class="form-control" placeholder="Event Duration" name="duration">
			</div>

			<div class="form-group">
				<label for="Text">Chief Guest (if any):</label> <input type="text"
					class="form-control" placeholder="Chief Guest" name="ChiefGuest">
			</div>

			<select name="Security Arrangements" class="custom-select">
				<option selected>Select Security</option>
				<option value="Mumbai">not required</option>
				<option value="Delhi">low</option>
				<option value="Bangalore">High</option>
			</select>
			<pre></pre>
			<section>
				<p>Food Preferences</p>
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="customCheck" name="example"> <label
						class="custom-control-label" for="customCheck">Pure-Veg</label>
				</div>
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="customCheck1" name="example1"> <label
						class="custom-control-label" for="customCheck1">Veg &
						N-Veg</label>
				</div>

				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="customCheck2" name="example2"> <label
						class="custom-control-label" for="customCheck2">Starters</label>
				</div>
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="customCheck3" name="example3"> <label
						class="custom-control-label" for="customCheck3">Main
						Course</label>
				</div>
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="customCheck4" name="example4"> <label
						class="custom-control-label" for="customCheck4">South-Indian</label>
				</div>
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="customCheck5" name="example5"> <label
						class="custom-control-label" for="customCheck5">Italian(Pizza&Burger)</label>
				</div>
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="customCheck6" name="example6"> <label
						class="custom-control-label" for="customCheck6">North-indian</label>
				</div>

			</section>
			<pre></pre>
			<select name="Venue" class="custom-select">
				<option selected>Where you would prefer this event to be
					hosted?</option>
				<option value="Mumbai">Hotel</option>
				<option value="Delhi">Stadium</option>
				<option value="Delhi">Office</option>
				<option value="Delhi">Wedding Hall</option>
				<option value="Delhi">Remote Ground</option>
				<option value="Delhi">Home</option>
				<option value="Delhi">Housing Society</option>
				<option value="Delhi">Others</option>
			</select>
			<pre></pre>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</div>
</body>
</html>