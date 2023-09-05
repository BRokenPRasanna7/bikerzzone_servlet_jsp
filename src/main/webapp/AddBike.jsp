<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Bike</title>
<!-- Add Bootstrap CSS link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<h1>Add Bike</h1>
	<form action="AddBikeServlet" method="post" class="container mt-4">
		<div class="form-group">
			<label for="brand">Brand:</label> <input type="text"
				class="form-control" name="brand" required>
		</div>
		<div class="form-group">
			<label for="model">Model:</label> <input type="text"
				class="form-control" name="model" required>
		</div>
		<div class="form-group">
			<label for="price">Price:</label> <input type="number"
				class="form-control" name="price" required>
		</div>
		<div class="form-group">
			<label for="ownership">Ownership:</label> <input type="text"
				class="form-control" name="ownership" required>
		</div>
		<div class="form-group">
			<label for="location">Location:</label> <input type="text"
				class="form-control" name="location" required>
		</div>
		<div class="form-group">
			<label for="manufactureDate">Manufacture Date:</label> <input
				type="date" class="form-control" name="manufactureDate" required>
		</div>
		<button type="submit" class="btn btn-primary">Add Bike</button>
	</form>

	<!-- Add Bootstrap JS scripts (at the end of the body for better performance) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
