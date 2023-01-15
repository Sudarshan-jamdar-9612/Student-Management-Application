<%@page import="com.project.jdbc.open.OpenConnection"%>
<%@page import="com.project.jdbc.close.CloseConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StudentDetailsForm</title>
<link rel="stylesheet" type="text/css" href="CSS/StyleIndex.css">
<!--<script>
	window.onload = function() {
		document.getElementById('add').onsubmit = function() {
			var n = document.getElementById("name").value;
			if (!n) {
				alert("Please enter the Details Course");
				return false;
			}
			return confirm("Data Submitted succesfully!!");
		}
	}
</script>  -->
</head>
<script type="text/javascript">
function out() 
{
window.history.forward();
}
setTimeout("out()", 0);
window.onunload = function () { null };
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
			<ul  id="nov">
			<li><a href="index.jsp" >Home</a> </li>
			<li><a href="Search.jsp">Search</a> </li>
			<li><a href="AddStudents.jsp" class="active">Add</a> </li>
			<li><a href="RemoveStudent.jsp">Remove</a> </li>
			<li><a href="UpdateStudent.jsp">Update</a></li>
			<li style="float:right"><a><h2>Welcome,<%=name%></h2></a></li>
			</ul>
</header>
<section>
	<form action="JDBc/AddStudentJDBC.jsp" method="post" id="add" class="form">
	<fieldset>
		<legend><b><h3>Student Details</b></h3></legend>
		<table>
			<tr>
			<td>Student Name: </td>
			<td><input type="text" name="name" id="name" required="required"></td>
			</tr>
			<tr>
			<td>Select Course: </td>
			<td><input type="checkbox" name="course" value="JAVA">JAVA</td>
			</tr>
			<tr>
			<td></td>
			<td><input type="checkbox" name="course" value="SQL">SQL</td>
			</tr>
			<tr>
			<td></td>
			<td><input type="checkbox" name="course" value="Web_Tech">Web Technology</td>
			</tr>
			<tr>
			<td></td>
			<td><input type="checkbox" name="course" value="Python">Python</td>
			</tr>
			<tr>
			<td></td>
			<td><input type="checkbox" name="course" value="Testing">Testing</td>
			</tr>
			<tr>
			<td>Student Gender: </td>
			<td><input type="radio" name="gen" value="male">Male</td>
			</tr>
			<tr>
			<td></td>
			<td><input type="radio" name="gen" value="female">Female</td>
			</tr>
			<tr>
			<td></td>
			<td><input type="radio" name="gen" value="other">Other</td>
			</tr>
			<tr>
			<td>Mobile No: </td>
			<td><input type="number" name="contact" required="required"></td>
			</tr>
			<tr>
			<td>DOB: </td>
			<td><input type="date" name="dob" required="required"></td>
			</tr>
			<tr>
			<td>EmailId: </td>
			<td><input type="email" name="email" required="required"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>
		</table>
	</fieldset>
	</form>
</section>
<section>
<h2 id="msg">
<% try {%>
<%= session.getAttribute("msg").toString() %></h2>
	<%}catch(Exception e){}
%>
	</section>
	<footer style="margin-top: 9%;">
	<ul>
	<li style="font-size: 1.5em;float: right;bottom: 0;"><a href="Login.jsp">LogOut</a></li>
	<li style="font-size: 1.5em;float: right;bottom: 0;"><a href="RegisterPage.jsp">SignUp</a></li>
	</ul>
</footer>
</body>
</html>