<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.fssa.bikerzzone.model.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Add Bootstrap CSS link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

<title>Insert title here</title>
</head>
<body>
	<img id="banner" src="../../Assets/Images/Yamaha-banner"
		alt="Yamaha-banner">

	<%
	List<Bike> bikeList = (List<Bike>) request.getAttribute("bikeList");
	if (bikeList != null && !bikeList.isEmpty()) {
		for (Bike ele : bikeList) {
	%>

	<div class="container mt-4">
		<div class="row">
			<div class="col-md-4">
				<div class="card mb-4">
					<img src="<%=ele.getImageUrl1()%>" alt="Bike Image"
						class="card-img-top">
					<div class="card-body">
						<h5 class="card-title text-primary"><%=ele.getBrand()%>
							<%=ele.getModel()%></h5>
						<p class="card-text text-success">
							Price :
							<%=ele.getPrice()%></p>
						<p class="card-text text-success">
							Location :
							<%=ele.getLocation()%></p>
						<p class="card-text text-success">
							Ownership :
							<%=ele.getOwnership()%></p>
						<a href="../../Pages/Buy Bike/bikeview.html"
							class="btn btn-danger">LEARN MORE</a> <span id="arrow"
							class="material-symbols-outlined text-info">
							arrow_circle_right</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%
	}
	} else {
	%>
	<p>Empty</p>
	<%
	}
	%>

	<!-- Add Bootstrap JS scripts (at the end of the body for better performance) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
