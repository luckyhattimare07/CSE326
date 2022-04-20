<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style1.css">
<title>Search donors</title>

</head>
<body>
	<nav class="navbar background">
		<ul class="nav-list">
			<div class="logo">
				<img src="images/hhh.jpg">
			</div>
			<li><a href="index.html#home">Home</a></li>
			<li><a href="index.html#about">About</a></li>
			<li><a href="index.html#services">Services</a></li>
			<li><a href="index.html#contact">Contact</a></li>
		</ul>
		<div class="rightNav">
			<div class="dropdown">
				<button class="btn1 btn1-sm" id="search">Options</button>
				<div class="dropdown-content">
					<a href="reg.jsp">New Registration </a> <a href="search.jsp">Search
						the Donors </a> <a href="book.jsp">Book The Donors </a><a href="listDonor.jsp">List
						of Donors Reg </a><a href="listBook.jsp">List of Transaction </a>
				</div>
			</div>
			<a href="search.jsp"><button class="btn1 btn1-sm" id="search">search</button></a>

		</div>
	</nav>
	<div class="jumbotron text-center">
		<h1>List Of Donors</h1>
	</div>
	<p>

		<%
			try {
		%>


		<%
			Class.forName("org.postgresql.Driver"); // driver load
				Connection cn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres",
						"postgres"); // Database Connection  
				String sql = "select * from reg ";
				Statement stmt = cn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
		%>
	
	<table style="width: 100%" class="table table-striped">
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>City</th>
			<th>Blood Group</th>

		</tr>

		<%
			while (rs.next()) {
					out.println("<tr>");
					out.println("<td>" + rs.getString(1) + "</td>");
					out.println("<td>" + rs.getString(3) + "</td>");
					out.println("<td>" + rs.getString(2) + "</td>");
					out.println("<td>" + rs.getString(4) + "</td>");
					out.println("<td>" + rs.getString(5) + "</td>");
					out.println("</tr>");
				}

			} catch (Exception ex) {
				out.println("<h3>" + ex + "</h3>");
			}
		%>
	</table>
<hr>

	<a class="btn btn-primary btn-lg" href="index.html#home" role="button">Back
			to Home</a><br><hr>
</body>
</html>