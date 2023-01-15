<%@page import="com.project.jdbc.close.CloseConnection"%>
<%@page import="com.project.jdbc.open.OpenConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Remove Student Data</title>
<link rel="stylesheet" type="text/css" href="CSS/StyleIndex.css">
</head>
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
<script type="text/javascript">
function out() 
{
window.history.forward();
}
setTimeout("out()", 0);
window.onunload = function () { null };
</script>
<body>
<%
String name = session.getAttribute("name").toString();
String sql = "";
%>
<header>
			<ul  id="nov">
			<li><a href="index.jsp" >Home</a> </li>
			<li><a href="Search.jsp">Search</a> </li>
			<li><a href="AddStudents.jsp">Add</a> </li>
			<li><a href="RemoveStudent.jsp" class="active">Remove</a> </li>
			<li><a href="UpdateStudent.jsp">Update</a></li>
			<li style="float:right"><a><h2>Welcome,<%=name%></h2></a></li>
			</ul>
</header>
	<section>
		<div>
			<form action="JDBc/removeJDBC.jsp" class="form">
				<fieldset>
					<legend><b><h4>Delete Student Details</h4></b></legend>
					<table>
						<tr>
							<td>Enter Id:</td>
							<td><input type="text" name="id"
								placeholder="Enter Student Id" required="required"></td>
						</tr>
						<tr>
							<td><input type="submit" value="Delete">
						</tr>
					</table>
				</fieldset>
			</form>
		</div>
	</section>
		<section>
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
	<%
	try{
	OpenConnection.openConnection();
	sql = "select * from students";
	OpenConnection.resultSet = OpenConnection.statement.executeQuery(sql);
	while(OpenConnection.resultSet.next()){
		%>
		<tr class="tab">
			<td class="tab"><%=OpenConnection.resultSet.getString(1) %></td>
			<td class="tab"><%=OpenConnection.resultSet.getString(2) %></td>
			<td class="tab"><%=OpenConnection.resultSet.getString(3) %></td>
			<td class="tab"><%=OpenConnection.resultSet.getString(4) %></td>
			<td class="tab"><%=OpenConnection.resultSet.getString(5) %></td>
			<td class="tab"><%=OpenConnection.resultSet.getString(6) %></td>
			<td class="tab"><%=OpenConnection.resultSet.getString(7) %></td>
		</tr>
<%}

}catch(Exception e){
	out.println();
}
finally{
	CloseConnection.closeConnection();
}
%>
</table>
	</section>
	<footer style="margin-top: 25%;">
	<ul>
	<li style="font-size: 1.5em;float: right;bottom: 0;"><a href="Login.jsp">LogOut</a></li>
	<li style="font-size: 1.5em;float: right;bottom: 0;"><a href="RegisterPage.jsp">SignUp</a></li>
	</ul>
</footer>
</body>
</html>