<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>


<head>
<title>Online BookStore</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../View/bookstore.css">
<script type="text/javascript" src="../View/bookstore.js"></script>
<link rel="stylesheet" href="../View/payment.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
	<header class="header">
		<div class="btn1">
			<h1>
				<center>Online BookStore</center>
			</h1>
			<img
				src="../View/book-tree-520x520.jpg"
				class="homeimg"  />

		
			<a href="home.jsp"><button
					class="mybtn">Home</button></a> 
				
			

		</div>
	</header>
	<hr>

		<div class="row">
			<div class="col-75">
				<div class="container1">
					<form action="check_out">

						<div class="row">
							<div class="col-50">
								<h3>Billing Address</h3>
								<label for="fname"><i class="fa fa-user"></i> Full Name</label>
								<input type="text" id="fname" name="fullname"
									placeholder="John M. Doe"> <label for="email"><i
									class="fa fa-envelope"></i> Email</label> <input type="text" id="email"
									name="email" placeholder="john@example.com"> <label
									for="adr"><i class="fa fa-address-card-o"></i> Address</label>
								<input type="text" id="adr" name="address"
									placeholder="542 W. 15th Street"> <label for="city"><i
									class="fa fa-institution"></i> City</label> <input type="text"
									id="city" name="city" placeholder="New York">

								<div class="row">
									<div class="col-50">
										<label for="state">State</label> <input type="text" id="state"
											name="state" placeholder="NY">
									</div>
									<div class="col-50">
										<label for="zip">Zip</label> <input type="text" id="zip"
											name="zip" placeholder="10001">
									</div>
								</div>
							</div>

							<div class="col-50">
								<h3>Payment</h3>
								<label for="fname">Accepted Cards</label>
								<div class="icon-container">
									<i class="fa fa-cc-visa" style="color: navy;"></i> <i
										class="fa fa-cc-amex" style="color: blue;"></i> <i
										class="fa fa-cc-mastercard" style="color: red;"></i> <i
										class="fa fa-cc-discover" style="color: orange;"></i>
								</div>
								<label for="cname">Name on Card</label> <input type="text"
									id="cname" name="cardname" placeholder="John More Doe" /> <label
									for="ccnum">Credit card number</label> <input type="text"
									id="ccnum" name="cardnumber"
									placeholder="Enter Your Credit Number" onkeyup="creditNum()" />
								<span id="invalid_card"></span> <label for="expmonth">Exp
									Month</label> <input type="text" id="expmonth" name="expmonth"
									placeholder="September" />

								<div class="row">
									<div class="col-50">
										<label for="expyear">Exp Year</label> <input type="text"
											id="expyear" name="expyear" placeholder="2018" />
									</div>
									<div class="col-50">
										<label for="cvv">CVV</label> <input type="text" id="cvv"
											name="cvv" placeholder="352" onkeyup="cvvFormat()" /> <span
											id="wrong_cvv"></span>
									</div>
								</div>
							</div>

						</div>

						<input type="submit" value="Continue to checkout" class="btn"
							id="check_out" onclick="submit()" />
							<input type ="button" value="Cancel" class="btn"
							id="cancel" onclick="cancelBooking()" />
					</form>
				</div>
			</div>
			</div>
	
</body>
</html>