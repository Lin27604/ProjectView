<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="../View/bookstore.css">
<script type="text/javascript" src="../View/bookstore.js"></script>
<link rel="stylesheet" href="../View/cart.css">
</head>
	<body>
		<header class="header">
			<div class="btn1" >
			<img
				src="../View/book-tree-520x520.jpg"
				class="homeimg"  />
				<h1>
					<center>Online BookStore</center>
				</h1>
				<a href="../JSP/home.jsp" ><button class="mybtn">Home</button></a>
			</div>
		</header>
		<hr>
		<body>
             
				
	        <section class="container1 content-section">
            <h2 class="section-header">CART</h2>
            <div class="cart-row">
                <span class="cart-item cart-header cart-column">ITEM</span>
                <span class="cart-price cart-header cart-column">PRICE</span>
                <span class="cart-quantity cart-header cart-column">QUANTITY</span>
            </div>
            <div class="cart-items">
            </div>
            <div class="cart-total">
                <strong class="cart-total-title">Total</strong>
                <span class="cart-total-price">$0</span>
            </div>
            <a href="billing.html" ><button class="btn btn-primary btn-purchase" type="button">PURCHASE</a>
            <button type="button" onclick="cancelBooking()" id="cancelButton"class="btn btn-primary btn-purchase">Back</button>
        </section>
						
					
				

    </body>
</html>