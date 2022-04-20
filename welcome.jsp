<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Donors</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="style1.css">
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
						the Donors </a> <a href="book.jsp">Book The Donors </a> <a href="listDonor.jsp">List
						of Donors Reg </a><a href="listBook.jsp">List of Transaction </a>
				</div>
			</div>
			<a href="search.jsp"><button class="btn1 btn1-sm" id="search">search</button></a>

		</div>
	</nav>
	<%
		try {
			Class.forName("org.postgresql.Driver"); // driver load
			Connection cn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres",
					"postgres"); // Database Connection  

			String sql = "insert into reg values('" + request.getParameter("t1") + "','"
					+ request.getParameter("t3") + "','" + request.getParameter("t2") + "','"
					+ request.getParameter("ct") + "','" + request.getParameter("bg") + "')";
			Statement stmt = cn.createStatement();
			stmt.execute(sql);
			stmt.close();
			cn.close();
		} catch (Exception ex) {
			out.println("<h3>" + ex + "</h3>");
		}
	%>
	<div class="alert alert-success">
		<strong>Success!</strong> Your Data Has Registered .
	</div>
	
	<div class="jumbotron">
		<h1 class="display-4">Congratulation</h1>
		<p class="lead">
		<h4>
			Your Name is
			<%=request.getParameter("t1")%></h4>
		<br>
		<h4>
			Your Email Id is
			<%=request.getParameter("t2")%></h4>
		.
		</p>
		<hr class="my-4">
		<p>You Are Very Big Soul ,To Donate Your Blood .Our Team Is Thanks For You.</p>
		<a class="btn btn-primary btn-lg" href="index.html#home" role="button">Back to Home</a>
	</div>

</body>
</html>