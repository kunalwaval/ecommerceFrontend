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
			<h1>Enter details of new Product</h1>

			<c:url value="/saveproduct" var="action2" />
			<form:form action="${action2}" method="post" name="product"
				modelAttribute="Product" enctype="multipart/form-data">

				<form:hidden path="productId" />

				<div class="form-group">
					<form:input path="productName" id="prodname" required
						class="form-control" />
					<label class="form-label">Name</label>
				</div>
				<div class="form-group">
					<form:textarea path="productDescription" id="proddescription"
						required class="form-control" />
					<label class="form-label">Description</label>
				</div>
				<div class="form-group">
					<label class="form-label">Category</label>
					<form:select path="category" id="prodcategory">
						<c:forEach items="${categories}" var="c">
							<form:option value="${c.categoryName }"
								label="${c.categoryName }" />
						</c:forEach>
					</form:select>
				</div>
				<div class="form-group">
					<form:input path="stock" type="number" id="stock" required
						class="form-control" />
					<label class="form-label">Stock</label>
				</div>

				<div class="form-group">
					<form:input path="price" type="number" id="price" required
						class="form-control" />
					<label class="form-label">Price</label>
				</div>
				<div class="form-group">
					<label class="form-label">Image</label> <input type="file"
						name="image" id="pic" class="form-control" accept="image/*" />

				</div>
				<div class="form-group">

					<button class="btn" id="productback">Back</button>
					<button type="submit" class="btn">Done!</button>
				</div>

			</form:form>
		</div>
	</div>
	</div>
	<!-------------------------------------------------------------------->


	<jsp:include page="footer.jsp" />
</body>
</html>