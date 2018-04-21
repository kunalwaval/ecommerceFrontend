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
  <center><h1 style="padding-top:20px;">Enter details of new Supplier</h1></center>
  <div class="logmod">
  <div class="logmod__wrapper">
    
    <div class="logmod__container2">
      <ul class="logmod__tabs">
        <li data-tabtar="lgm-3"><a href="#">New Supplier</a></li>
       </ul>
      <div class="logmod__tab-wrapper">
   <div class="logmod__tab lgm-3">
        <div class="logmod__heading">
          <span class="logmod__heading-subtitle">Enter your personal details</span>
        </div> 
        <form name="supplier">
        <div class="form-group">
           <input id="supname" required="required" class="form-control"/>
    <label class="form-label">Name</label>
    </div>
     <!-- <div class="form-group">
     <input id="email" type="email" required="required" class="form-control"/>
    <label class="form-label">Email id</label></div>
    
     <div class="form-group">
     <textarea rows="4" cols="30" id="address"  required="required" class="form-control"></textarea>
    <label class="form-label">Address</label></div>
    <div class="form-group">
     <input id="zipcode" type="number" required="required" class="form-control"/>
    <label class="form-label">Zipcode</label></div> -->
     
     <div class="form-group">
    <input id="supcontact" type="number" required="required" class="form-control"/>
   <label class="form-label">Contact no.</label>
   <br>
    <button class="btn3">Done!</button>
    </div>
          </form>
    </div>
  </div>
</div>
	<!-------------------------------------------------------------------->


	<jsp:include page="footer.jsp" />
</body>
</html>