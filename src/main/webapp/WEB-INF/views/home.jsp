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

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="./resources/js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="./resources/js/bootstrap.min.js" type="text/javascript"></script>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<link href="./resources/css/style.css" rel="stylesheet">

</head>

<body>
	<jsp:include page="nav.jsp" />

	<!-------------------------------------------------------------------->

	<div class="container-fluid">
		<div class="row text-center">

			<c:url value="/shop" var="shop" />

			<div class="col-md-12">
			<h1 style="font-family:Imprint MT Shadow"> CAR SHOP</h1>
			<p><h2><i>The best deals on all wheels!!</i></h2></p>
			</div>
			
			<div class="col-md-4">
			
				<a href="${shop}">
				<img src="http://image.mustangandfords.com/f/223407692+w650+h433+re0+cr1+ar0+st0/2015-ford-mustang-gt-arnie-campo.jpg" style="width:100%">
				
						<h4>Cars</h4>
						<p>All Kinds</p>
				</a>
			</div>
			
			<div class="col-md-4">
				
				<a href="${shop}">
				<img src="http://shreejiautomobiles.in/images/goc/ases.png" style=" height:225px ;width:100%">

				<c:url value="/shop" var="shop"></c:url>

				
						<h4>Accessories</h4>
						<p>All Kind</p>
				</a>
			</div>
			
			<div class="col-md-4">
				
				
				<a href="${shop}">
				<img src="https://c1.staticflickr.com/8/7689/17309017491_b037ef1709_b.jpg" style="width:100%">
				
				<c:url value="/services" var="services"></c:url>
				
						<h4>Insurance</h4>
						<p>Your safety is our moto !</p>
				</a>
			</div>
			
			
			<div class="col-md-12">
				<c:url value="/services" var="services"></c:url>
				<img
					src="http://midwayleasing.blob.core.windows.net/wordpress-media/2015/08/HomepageBanner-small.jpg" style="width:100%">
			
			</div>
			
			<br>
		</div><br><br>
	</div>


	<!-------------------------------------------------------------------->


	<jsp:include page="footer.jsp" />
</body>
</html>