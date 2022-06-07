<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	      <link rel="stylesheet" href="View/bookstore.css">
          <script type="text/javascript" src="View/bookstore.js"></script>
          <meta charset="ISO-8859-1">
			<title>Online BookStore</title>
		</head>
<body class="background">
			<header class="header">
				<div class="btn1">
			<img
				src="View/book-tree-520x520.jpg"
				class="homeimg"/>

			<h1>
				<center>Online BookStore</center>
			</h1>
					<a href="index.jsp" ><button class="mybtn">Home</button></a>
					<a href="JSP/register.jsp" ><button class="mybtn">Register</button></a>
					<a href="JSP/login.jsp" ><button class="mybtn">Login</button></a>
				
				</div>
				
			</header>
			
			<hr>
			<form action="#" method="post">
				<div class="table-wrapper">
					<table  class= "fl-table">
						<tr>
							<th>Category</th>
							<th>Title</th>
							<th>Author</th>
							<th>ISBN</th>
							<th>Publisher</th>
							<th>Edition</th>
							<th>Price</th>
							<th>Action</th>
						</tr>
					
					</table>
					</div>
				</form>
			</body>
</html>