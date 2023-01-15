<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Rubik+Bubbles&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="CSS/StyleIndex.css">
<title>Home Page</title>
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
			<li><a href="index.jsp" class="active">Home</a></li>
			<li><a href="Search.jsp">Search</a></li>
			<li><a href="AddStudents.jsp">Add</a></li>
			<li><a href="RemoveStudent.jsp">Remove</a></li>
			<li><a href="UpdateStudent.jsp">Update</a></li>
			<li style="float: right"><a><h2>
						Welcome,<%=name%></h2></a></li>
		</ul>
	</header>

	<div class="slider" style="width: 100%;height: 550px;">
		<img alt="slideShow" src="media/black.png"  width="100%" height="100%"  >
	</div>

	<marquee style="color: red">
		<h2>New Batch Starting!!! &nbsp;&nbsp;&nbsp;&nbsp; New Batch
			Starting!!! &nbsp;&nbsp;&nbsp;&nbsp; New Batch Starting!!!
			&nbsp;&nbsp;&nbsp;&nbsp; New Batch Starting!!!
			&nbsp;&nbsp;&nbsp;&nbsp; New Batch Starting!!!</h2>
	</marquee>
	<h2 style="text-align: center; font-family:'Rubik Bubbles', cursive;font-size: 2em;">Course's</h2>
	<section>
		<video src="" poster="media/java.jpg" controls="controls" width="33%"></video>
		<video src="" poster="media/java.png" controls="controls" width="33%"></video>
		<video src="" poster="media/web.jpg" controls="controls" width="33%"></video>
	</section>
	<section>
		<div id="creater" style="height: 440px; width: 300px; background-color: red;margin-left: 40%;">
			<a href="https://www.linkedin.com/in/sudarshan-jamdar-04723917b/" target="_blank"><img alt="profile" src="media/Pics.jpg" height="100%" width="100%"></a>
			</div>
	</section>
	<footer>
		<ul>
			<li style="font-size: 1.5em; float: right; bottom: 0;"><a
				href="Login.jsp">LogOut</a></li>
			<li style="font-size: 1.5em; float: right; bottom: 0;"><a
				href="RegisterPage.jsp">SignUp</a></li>
		</ul>
	</footer>
</body>
</html>