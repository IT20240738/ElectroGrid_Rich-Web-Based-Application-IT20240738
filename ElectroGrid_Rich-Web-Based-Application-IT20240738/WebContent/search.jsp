<%@page import="com.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/payments.js"></script>
</head>
<body> 

<div class="container">



<h1>Payment Search </h1>

	<form id="formPayment" name="formPayment">
		 <br> Payment No: 
		 <input id="paymentNo" name="paymentNo" type="text" class="form-control form-control-md col-6">
		 <br>
	
		 <input id="btnView" name="btnView" type="submit" value="View" class="btn btn-primary">
	</form>
	
	<br>
			<div id="alertSuccess" class="alert alert-success"></div>
			<div id="alertError" class="alert alert-danger"></div>

		<br>
		
			<div id="divPaymnetsGrid">
	
			 <%
				 Payment paymentObj = new Payment();
			     String paymentNo = request.getParameter("paymentNo");
				 out.print(paymentObj.PaymentDetails(paymentNo)); 
			 %>
			</div>
			<br><br>
</div> </div> </div> 
</body>
</html>