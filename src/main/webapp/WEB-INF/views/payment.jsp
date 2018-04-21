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
			<h1>Let's Pay!</h1>

			<script src="resources/js/payeasyResponsiveTabs.js"
				type="text/javascript"></script>
			<div>
				<h2>Select Payment Method</h2>
				<ul class="resp-tabs-list">
					<c:url value="/order?id=${ShippingId}" var="order" />
					<li><a href="${order}"> Credit card </a></li>

					<c:url value="/order?id=${ShippingId}" var="order" />
					<li><a href="${order}"> Credit card </a></li>
				</ul>
			</div>
			<div>
				<h3 class="pay-title">Credit Card Info</h3>
				<form>
					<div>
						<h5>NAME ON CARD</h5>
						<input type="text">
						<h5>CARD NUMBER</h5>
						<input type="text" value="0000-0000-0000-0000" required>
					</div>
					<div>
						<h5>EXPIRATION</h5>
						<input type="number" class="text_box" type="text"
								value="6" min="1" /></li>
							<li><input type="number" class="text_box" type="text"
								value="1988" min="1" /></li>

						</ul>
					</div>
					<div class="tab-form-right user-form-rt">
						<h5>CVV NUMBER</h5>
						<input type="text" value="xxxx" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'xxxx';}" required="">
					</div>
					<div class="clear"></div>
			</div>
			<input type="submit" value="SUBMIT">
			</form>

			<!-------------------------------------------------------------------->


			<jsp:include page="footer.jsp" />
</body>
</html>