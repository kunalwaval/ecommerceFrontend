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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="./resources/js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="./resources/js/bootstrap.min.js" type="text/javascript"></script>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<link href="./resources/css/style.css" rel="stylesheet">



</head>

<body>
	<jsp:include page="nav.jsp" />




	<!-------------------------------------------------------------------->
	<!-- Gallery -->

	<div class="container">
		<h3>
			Our Collection <i class="fa fa-anchor" aria-hidden="true"></i>
		</h3>
		<br>

		<div class="row">
			<div class="col-md-4">


				<a href="#"><img
					src="https://wallpapers.place/wp-content/uploads/rolls-royce-logo-wallpaper-hd.jpg"
					style="height: 282px; width: 100%"></a>
			</div>

			<div class="col-md-4">


				<a href="#"><img
					src="https://wallpapercave.com/wp/wp1847270.jpg"
					style="height: 280px; width: 100%"></a>
			</div>

			<div class="col-md-4">


				<a href="#"><img
					src="https://hdwallsource.com/img/2014/9/koenigsegg-logo-wallpaper-hd-41876-42864-hd-wallpapers.jpg"
					style="height: 280px; width: 100%"></a>
			</div>

		</div>
		<br>
		<br>

		<div class="row">
			<div class="col-md-4">


				<a href="#"><img
					src="http://tripedali.com/wp-content/uploads/2014/10/Ferrari2.jpg"
					style="height: 280px; width: 100%"></a>
			</div>

			<div class="col-md-4">


				<a href="#"><img
					src="https://www.hdwallpaper.nu/wp-content/uploads/2015/07/bentley-logo-black-660x330.jpg"
					style="height: 280px; width: 100%"></a>
			</div>

			<div class="col-md-4">


				<a href="#"><img
					src="http://www.hdnicewallpapers.com/Walls/Big/Brands%20and%20Logo/Aston_Martin_Logo_HD_Wallpaper.jpg"
					style="height: 280px; width: 100%"></a>
			</div>
		</div>


		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		<c:forEach items="${productList}" var="product" varStatus="status">
			<li>
				<div class="agile_events_top_grid">
					<div class="w3_agileits_evets_text_img">
						<c:url value="/resources/images/${product.productId}.png"
							var="img"></c:url>
						<c:url value="singleProduct?productId=${product.productId}"
							var="single"></c:url>
						<a href="${single}" class="lsb-preview" data-lsb-group="header">
							<div class="view view-eighth">
								<img src="${img}" alt=" " class="img-responsive" width="376.2px"
									height="250.4px" />
								<div class="mask">
									<i class="fa fa-search-plus" aria-hidden="true"></i>
								</div>
							</div>
						</a>
					</div>
					<div>
						<h3>Name:${product.productName}</h3>
						<h3>Price:$ ${product.price}</h3>
					</div>
				</div>
			</li>
		</c:forEach>
		</ul>
	</div>
	<!-------------------------------------------------------------------->


	<jsp:include page="footer.jsp" />
</body>
</html>