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

			<c:url value="/j_spring_security_check" var="action"></c:url>
			<form:form action="${action}" method="post" name="login">
				<div class="hand"></div>
				<div class="hand rgt"></div>
				<h1>PetStore Login</h1>
				<div class="form-group">
					<input id="name" name="j_username" required="required"
						class="form-control" /> <label class="form-label">Username</label>
				</div>
				<div class="form-group">
					<input id="password" name="j_password" type="password"
						required="required" class="form-control" /> <label
						class="form-label">Password</label>
					<p class="alert">Unfilled Credentials..!!</p>
					<button class="btn2">Login</button>

					<!--  <c:url value="/signup" var="sign"></c:url> -->
					<button class="btn2"<%-- onclick="${login}" --%>>Register
					</button>
					<br> <a href="#">forgot password?</a>
				</div>
			</form:form>
			<!-------------------------------------------------------------------->


			<jsp:include page="footer.jsp" />
</body>
</html>