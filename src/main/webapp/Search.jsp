<%@page import="com.project.jdbc.close.CloseConnection"%>
<%@page import="com.project.jdbc.open.OpenConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
<link rel="stylesheet" type="text/css" href="CSS/StyleIndex.css">
</head>
<script type="text/javascript">
	function out() {
		window.history.forward();
	}
	setTimeout("out()", 0);
	window.onunload = function() {
		null
	};
</script>
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 4px;
	overflow: hidden;
	background: #318CE7;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover:not(.active) {
	background-color: #111;
}

.active {
	background-color: #002244;
	border-radius: 15px;
}
</style>
<body>
	<%
	String name = session.getAttribute("name").toString();
	%>
	<header>
		<ul id="nov">
			<li><a href="index.jsp">Home</a></li>
			<li><a href="Search.jsp" class="active">Search</a></li>
			<li><a href="AddStudents.jsp">Add</a></li>
			<li><a href="RemoveStudent.jsp">Remove</a></li>
			<li><a href="UpdateStudent.jsp">Update</a></li>
			<li style="float: right"><a><h2>
						Welcome,<%=name%></h2></a></li>
		</ul>
	</header>
	<section>
		<div class="form">
			<form action="JDBc/SearchJDBC.jsp">
				<fieldset>
					<legend>
						<b><h3>Search Student</h3></b>
					</legend>
					<table>
						<tr>
							<td>Enter Id:</td>
							<td><input type="text" name="id"
								placeholder="Enter Student Id" required="required"></td>
						</tr>
						<tr>
							<td><input type="submit" value="Search">
						</tr>
					</table>
				</fieldset>
			</form>
		</div>
	</section>
	<section>
		<%
		out.println(session.getAttribute("msg1"));
		try {
			OpenConnection.openConnection();
			String id = session.getAttribute("id").toString();
			String sql = "select * from students where idstudent='" + id + "'";
			OpenConnection.resultSet = OpenConnection.statement.executeQuery(sql);
			while (OpenConnection.resultSet.next()) {
		%>
		<h2>Student Details</h2>
		<table class="tab">
			<tr class="tab">
				<td class="tab">Id</td>
				<td class="tab">Name</td>
				<td class="tab">Email</td>
				<td class="tab">Course</td>
				<td class="tab">Contact</td>
				<td class="tab">DateOfBirth</td>
				<td class="tab">Gender</td>
			</tr>
			<tr class="tab">
				<td class="tab"><%=OpenConnection.resultSet.getString(1)%></td>
				<td class="tab"><%=OpenConnection.resultSet.getString(2)%></td>
				<td class="tab"><%=OpenConnection.resultSet.getString(3)%></td>
				<td class="tab"><%=OpenConnection.resultSet.getString(4)%></td>
				<td class="tab"><%=OpenConnection.resultSet.getString(5)%></td>
				<td class="tab"><%=OpenConnection.resultSet.getString(6)%></td>
				<td class="tab"><%=OpenConnection.resultSet.getString(7)%></td>
			</tr>
		</table>
		<%
		}
		} catch (Exception e) {
		out.println();
		} finally {
		CloseConnection.closeConnection();
		}
		%>
	</section>
	<footer style="margin-top: 25%;">
		<ul>
			<li style="font-size: 1.5em; float: right; bottom: 0;"><a
				href="Login.jsp">LogOut</a></li>
			<li style="font-size: 1.5em; float: right; bottom: 0;"><a
				href="RegisterPage.jsp">SignUp</a></li>
		</ul>
	</footer>
</body>
</html>