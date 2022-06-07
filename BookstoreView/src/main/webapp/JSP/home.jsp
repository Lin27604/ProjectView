<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.bookstore.helper.BookHelper"
	 import="java.sql.PreparedStatement" import= "java.sql.ResultSet"
	import="com.bookstore.model.DAOImp" import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="../View/bookstore.css">
<script type="text/javascript" src="../View/bookstore.js"></script>
</head>
<body>
	<header class="header">
		<div class="btn1">

			<img src="../View/book-tree-520x520.jpg" class="homeimg" />
			<h1>
				<center>Online BookStore</center>
			</h1>

			<table style="margin-left: 1610px">
				<tr>
					<th><a href="home.jsp"><button class="mybtn">Home</button></a></th>
					<form action="logout">
						<th><input type="submit" value="logout" class="mybtn">
						</th>
					</form>
					<th><a href="cart.jsp"><button class="mybtn">Go
								to Cart</button></a></th>

				</tr>
			</table>
		</div>
	</header>

	<hr>


	<form action="data" method="post">
		<div class="tbl-header">
			<table class="books" cellpadding="0" cellspacing="0" border="0">
				<thead>
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
				<thead>
		
		
			
					<tbody>
		<%   
                
				           
                            String sql;
                            DAOImp daoImp = new DAOImp();
                        	Connection conn = daoImp.getConn();
                        	String query =request.getParameter("q");
                        	if(query!=null){
                        		sql = "SELECT * FROM book where category like '%"+query+"%' or title like '%"+query+"%' or author like '%"+query+"%'or ISBN like '%"+query+"%' or publisher like '%"+query+"%' or editionNumber like '%"+query+"%'or price like '%"+query+"%'";
                        	}else{
                        		sql = "SELECT * FROM book";
                        	}
                        	
                        	PreparedStatement psmt = conn.prepareStatement(sql);
                        	ResultSet rst = daoImp.selectData(psmt);
                        	while (rst.next()){
                        %>
			
					<tr>
						<td>
							<%=rst.getString("category")%>
						</td>
						<td class="shop-item-title">
							<%=rst.getString("title")%>
						</td>
						<td>
							<%= rst.getString("author")%>
						</td>
						<td>
							<%= rst.getString("ISBN")%>
						</td>
						<td>
							<%=rst.getString("publisher") %>
						</td>
						<td>
							<%=rst.getString("editionNumber") %>
						</td>
						<td class="shop-item-price">
							<%=rst.getString("price")%>
						</td>

						<td>
							<button class="btn btn-primary shop-item-button" type="button">ADD TO Cart</button>
							
							
						</td>
					</tr>
					
				
				
				<%
                }
			
                 %>
					</tbody>
				</table>
		
		</div>
	</form>
	



</body>
</html>