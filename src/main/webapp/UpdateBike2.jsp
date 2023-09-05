<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Update Bike</h1>
	<form action="AddBikeServlet" method="post" class="container mt-4">
		<div class="form-group">
			<label for="brand">Brand:</label> <input type="text"
				class="form-control" name="brand"  value="" required>
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
		<button type="submit" class="btn btn-primary">Update Bike</button>
	</form>

</body>
</html>