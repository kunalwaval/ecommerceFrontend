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


			<h1>Enter details of new Category</h1>


			New Category

			<c:url value="/savecategory" var="action" />
			<form:form action="${action}" method="post" name="category"
				modelAttribute="Category">

				<form:hidden path="categoryId" />
				<div class="form-group">
					<form:input id="catname" path="categoryName" required
						class="form-control" />
					<label class="form-label">Name</label>
				</div>


				<div class="form-group">
					<form:textarea id="description" path="description" required
						class="form-control" />
					<label class="form-label">Description</label>
				</div>
				<div class="form-group">
					<button class="btn" id="categoryback">Back</button>
					<button type="submit" class="btn">Done!</button>
				</div>

			</form:form>
		</div>
	</div>
	<!-------------------------------------------------------------------->


	<jsp:include page="footer.jsp" />
</body>
</html>