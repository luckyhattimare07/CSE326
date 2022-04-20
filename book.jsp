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
<title>Book the Donors</title>

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
						the Donors </a> <a href="book.jsp">Book The Donors </a> <a
						href="listDonor.jsp">List of Donors Reg </a><a href="listBook.jsp">List
						of Transaction </a>
				</div>
			</div>
			<a href="search.jsp"><button class="btn1 btn1-sm" id="search">search</button></a>

		</div>
	</nav>
	<div class="jumbotron text-center">
		<h1>Book The Donors</h1>
	</div>
	<hr>
	<form action="welcome1.jsp" id="form2" method="post">
		
		<div class="form-group">
			<label for="t1"><b>Select The Donors : </b></label><br> <select
				id="t1" name="t1" required class="form-control">
				<option value="">Select the Donors</option>

				<%
					try {

						Class.forName("org.postgresql.Driver"); // driver load
						Connection cn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres",
								"postgres"); // Database Connection  

						String sql = "select name from reg";
						Statement stmt = cn.createStatement();
						ResultSet rs = stmt.executeQuery(sql);
						while (rs.next()) {

							out.println("<option>" + rs.getString(1) + "</option>");

						}

					} catch (Exception ex) {
						out.println("<h3>" + ex + "</h3>");
					}
				%>


			</select> <br>
		</div>
		<div class="form-group">
			<label for="t2"><b>Patient Name :</b></label><br> <input
				type="text" class="form-control" name="t2" id="t2" required
				placeholder="patient Name" /><br>
		</div>
		<div class="form-group">
			<label for="t3"><b>Date :</b></label><br> <input type="text"
				class="form-control" name="t3" id="t3" required
				placeholder="Enter Date" /><br>
		</div>
		<div class="form-group">
			<label for="t4"><b>No. of Unit : </b></label><br> <input
				type="text" class="form-control" name="t4" id="t4" required
				pattern="[0-9]" placeholder="Enter unit" /><br>
		</div>
		<div class="form-group">
			<input type="submit" class="btn btn-primary" name="b1" id="b1"
				value="Submit" class="form-control" />
		</div>
	</form>
	<div id="sum">
		<p>submit to Book The Donor</p>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
</body>
</html>