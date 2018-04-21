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
	<div class="panda">
		<div class="ear"></div>
		<div class="face">
			<div class="eye-shade"></div>
			<div class="eye-white">
				<div class="eye-ball"></div>
			</div>
			<div class="eye-shade rgt"></div>
			<div class="eye-white rgt">
				<div class="eye-ball"></div>
			</div>
			<div class="nose"></div>
			<div class="mouth"></div>
		</div>
		<div class="body"></div>
		<div class="foot">
			<div class="finger"></div>
		</div>
		<div class="foot rgt">
			<div class="finger"></div>
		</div>
	</div>
	<form name="login">
		<div class="hand"></div>
		<div class="hand rgt"></div>
		<h1>ThankYou for using petstore!</h1>
		<h1>Come Back Again!</h1>
	</form>
	<!-------------------------------------------------------------------->


	<jsp:include page="footer.jsp" />
</body>
</html>