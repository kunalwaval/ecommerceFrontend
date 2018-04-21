<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>ECommerce</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Context-Type" content="text/html; charset=utf-8" />

<script src="webapp/resources/js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="webapp/resources/js/bootstrap.min.js" type="text/javascript"></script>
<link href="webapp/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="webapp/resources/css/style.css" rel="stylesheet">

</head>

<body>
	<jsp:include page="nav.jsp" />

	<!-------------------------------------------------------------------->  
	<!-- banner -->
		<!-- /classes-->
	<div class="services" id="classes">
		<div class="container">

		 <h3 class="title-w3">Our Services</h3>
		 <p class="sub-text">Choose Your Fave</p>
		     <div class="wthree-agile-classes-section">
	               	<div class="col-md-3 class-grid" id="col1">
						<div class="class-grid-img hvr-sweep-to-top">
					       <img src="resources/images/contact2.jpg" alt=""/>
						    <div class="caption">
							    <h5>Trust your pets with us for everyday daycare anytime of the day.
							    Contact:9597700371</h5>
							</div>
						</div>
					
						<h4>Pet Daycare</h4>
					
				    </div>
				<div class="col-md-3 class-grid">
						<div class="class-grid-img hvr-sweep-to-top">
					       <img src="resources/images/pet4.jpg" alt=""/>
						    <div class="caption">
							    <h5>All types of stylish and latest grooming for your pets.
							    Contact:7010593030</h5>
							</div>
						</div>
					
						<h4>Pet Grooming</h4>
					
				    </div>
				<div class="col-md-3 class-grid">
						<div class="class-grid-img hvr-sweep-to-top">
					       <img src="resources/images/pet5.jpg" alt=""/>
						    <div class="caption">
							    <h5>We help you on your busy schdule to take care of your pets.
							    Contact:9360321706</h5>
							</div>
						</div>
					
						<h4>Dog Walking</h4>
					
				    </div>
				<div class="col-md-3 class-grid lost">
						<div class="class-grid-img hvr-sweep-to-top">
					       <img src="resources/images/pet3.jpg" alt="" />
						    <div class="caption">
							    <h5>Reliable veterinary service provided for all kinds of pets.
							    Contact:9597700371</h5>
							</div>
						</div>
	<!-------------------------------------------------------------------->


	<jsp:include page="footer.jsp" />
</body>
</html>