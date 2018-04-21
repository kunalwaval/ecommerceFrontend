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

	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<h2>My Shopping Bag( ${count} )</h2>

				<c:forEach items="${i}" var="cart">
					<div class="cart-header">
						<div class="close1">
							<c:url value="/cart/removecartitem/${cart.cartId}" var="remove" />
							<a href="${remove}"><img src="resources/images/close.png"></a>
						</div>
						<div class="cart-sec">


							<div class="cart-item cyc">
								<img src="resources/images/${cart.products.productId}.png" />
							</div>
							<div class="cart-item-info">
								<h3>${cart.products.productName}<span>Category:
										${cart.products.category}</span>
								</h3>
								<h4>
									<span>Rs. $ </span>${cart.total}</h4>
								<p class="qty">
									Qty ::
									<c:url value="/cart/minus/${cart.products.productId}"
										var="minus"></c:url>
									<a href="${minus}"><span
										class="glyphicon glyphicon-minus-sign"> </span></a> <input
										type="text" value="${cart.quantity}"
										style="width: 36px; text-align: center;">
									<c:url value="/cart/plus/${cart.products.productId}" var="plus"></c:url>
									<a href="${plus}"><span
										class="glyphicon glyphicon-plus-sign"></span></a>
								</p>
							</div>
							<div class="delivery">
								<p>Service Charges:: Rs.00.00</p>
								<span>Delivered in 2-3 bussiness days</span>
							</div>
						</div>
					</div>
				</c:forEach>


			</div>
			<div class="col-md-3">
				<c:url value="/shop" var="shop" />
				<a class="continue" href="${shop}">Continue to Shop</a>
				<div class="price-details">
					<h3>Price Details</h3>
					<span>Total</span> <span class="total">${total}</span> <span>Discount</span>
					<span class="total">---</span> <span>Delivery Charges</span> <span
						class="total">00.00</span>
					<div class="clearfix"></div>
				</div>
				<h4 class="last-price">TOTAL</h4>
				<span class="total final">${total}</span>
				<div class="clearfix"></div>
				<c:url value="/shipping" var="shipping"></c:url>
				<a class="order" href="${shipping}">Place Order</a>
			</div>

			<!-------------------------------------------------------------------->


			<jsp:include page="footer.jsp" />
</body>
</html>