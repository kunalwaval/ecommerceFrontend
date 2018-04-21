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

<script src="webapp/resources/js/jquery-3.1.1.min.js"
	type="text/javascript"></script>
<script src="webapp/resources/js/bootstrap.min.js"
	type="text/javascript"></script>
<link href="webapp/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="webapp/resources/css/style.css" rel="stylesheet">

</head>

<body>
	<jsp:include page="nav.jsp" />

	<!-------------------------------------------------------------------->
	<div class="container">
		<div class="row">

			<h2>About Us</h2>
			<p class="sub-text one">Choose Your Own Pet</p>
			<p>In PetStore you are given with a platform with lots of amazing
				pets from cats,dogs to love birds to choose from.You can also choose
				from a range of ages and types.So PetStore helps you to choose your
				pet according to your own style!and price!. We are currently
				involved in increasing our range of pets to improve the user's
				experience like they have never experienced before.</p>



			<div>
				<div class="col-md-6">
					<h4>Pet Supplies</h4>
					<p>All the supplies that we have in pet store are exclusively
						for pets and for all types of them.We assure you that our products
						are of the highest quality and reliable and totally exclusive from
						all other pet stores.</p>
				</div>
				<div class="col-md-6">
					<h4>Our Services</h4>
					<p>We here in PetStore currently provide two types of services-
						shelter and spa. We provide reliable shelter and quality spa
						services for our customer's pets which we guarantee that you will
						come back for!</p>
				</div>
			</div>
		</div>
	</div>

	<!-------------------------------------------------------------------->


	<jsp:include page="footer.jsp" />
</body>
</html>