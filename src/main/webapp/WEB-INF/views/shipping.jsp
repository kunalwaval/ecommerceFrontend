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

											
		
   <div class="main" id="plans">
		<div id="particles-js"></div>

		  
		<div class="priceing-table-main">
		       <h3 class="title-w3 three">Your Addresses </h3>
		       <p class="sub-text">Choose the address you want to deliver to </p>
			   <div class="priceing-table-grids">
			   <c:forEach items="${shipping}" var="shipping" varStatus="status">
				 <div class="col-md-3 price-grid">
				 
				 
					<div class="price-block agile">
						<div class="price-gd-top pric-clr1">
							<h4>${shipping.contact}</h4>
							<h3><span>${shipping.shippingAddress}</span></h3>
							<h5>${shipping.zipcode}</h5>
						</div>
						<div class="price-gd-bottom">
							   <div class="price-list">
								
									 <h6 class="bed"><i class="fa fa-street-view" aria-hidden="true"></i></h6>
							</div>
							<div class="price-selet pric-sclr1">	
							<c:url value="/payment?id=${shipping.shippingAddressId}" var="action"></c:url>	    			   
                    <a  href="${action}">Deliver!</a>
							</div>
						</div>
					</div>
				</div>
					</c:forEach>
				
				<div class="col-md-3 price-grid">
					<div class="price-block agile">
						<div class="price-gd-top pric-clr2">
							<h4>Contact</h4>
							<h3><span>Address</span></h3>
							<h5>zipcode</h5>
						</div>
						<div class="price-gd-bottom">
							<div class="price-list">
								
									
								<h6 class="bed two"><i class="fa fa-street-view" aria-hidden="true"></i></h6>
								
							</div>
							<div class="price-selet pric-sclr2">
								<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog">Got new Address?</a>

							</div>
						</div>
					</div>
				</div>
				
				<div class="clearfix"> </div>
			</div>
		
		</div>	
	</div>	
	<!--//prices -->
				<!-- Modal2-->
								<div class="pop-up"> 
			<div id="small-dialog" class="mfp-hide book-form">
				<h4>New Address </h4>
				 <c:url value="/addShipping" var="action"></c:url>
				<form:form action="${action}" method="post" modelAttribute="shippingaddress">
					<form:input path="contact" type="text" name="Name" placeholder="Name" required=""/>
					<form:input path="shippingAddress" type="text" name="address" class="email" placeholder="Address" required=""/>
					<form:input path="zipcode" type="text" name="zipcode" class="password" placeholder="zipcode" required=""/>	
										<input type="submit" value="Yes! Add">
				</form:form>
			</div>
	<!-------------------------------------------------------------------->


	<jsp:include page="footer.jsp" />
</body>
</html>