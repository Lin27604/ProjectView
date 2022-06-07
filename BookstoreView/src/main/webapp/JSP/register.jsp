<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Online BookStore</title>
<link rel="stylesheet" href="../View/bookstore.css">
<script type="text/javascript" src="../View/bookstore.js"></script>
<meta charset="ISO-8859-1">
		</head> 
	<body>
         <header class="header">
				<div class="btn1">
				    <img
				src="../View/book-tree-520x520.jpg"
				class="homeimg" onclick="clickimage()" />
				
					<h1>
						<center>Online BookStore</center>
					</h1>
					<a href="..\index.jsp" ><button class="mybtn">Home</button></a>
					
					<a href="login.jsp" ><button class="mybtn">Login</button></a>
					
				</div>
				
			</header>
			<hr>
			<div>
		<form action="register" method="post" class="wrapper">
			
				<h1>Register</h1>
				<p>Please fill in this form to create an account.</p>
			
				<hr>
					<label for="name">
						<b>Name</b>
					</label>
					<input type="text" placeholder="Enter Name" name="name" class="input"/>
					<label for="age">
						<b>Age</b>
					</label>
					<input type="number" placeholder="Enter Age" name="age" class="input"/>
					<label for="username">
						<b>Username</b>
					</label>
					<input type="text" placeholder="Enter Username" name="uname" class="input"/>
					<div>
					<label for="psw">
						<b>Password</b> 
					</label>
					<input type="password" placeholder="Enter Password" name="psw" class="input" id="psw" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  onkeyup="checkPassword()" required /><br>
					<span id="strength"></span>
					</div>
	                  <div>
					<label for="psw-repeat">
						<b>Repeat Password</b>
					</label>
					<input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" class="input" required onkeyup="validate_password()" required />
					<span id="wrong_pass_alert"></span>
					</div>
					<label for="email">
						<b>Email</b>
					</label>
					<div>
					<input type="email" placeholder="Enter Email" name="email" class="input" id ="email" onkeyup="validEmail()" required />
					<span id="email_format"></span>
					</div>
					<label for="phone">
						<b>Phone</b>
					</label>
					<input type="text" placeholder="000-000-0000" name="phone" class="input" id="phone" onkeyup="phoneFormat()" />
					<span id="phone_format"></span>
					<label for="address">
						<b>Address</b>
					</label>
					<input type="text" placeholder="Enter Address" name="address" class="input"/>
					
					<input type="submit" value="Submit" class="mybtn" onclick= "register()" id="create" /> <input type="reset" value="Reset" class="mybtn"/>
					

			
					
					
					
					<div>
						<p>Already have an account? <a href="login.jsp">Sign in</a>.</p>
					</div>
		</form>
		</div>
	</body>
</html>