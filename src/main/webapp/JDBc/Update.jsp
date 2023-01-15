<%@page import="com.project.jdbc.open.OpenConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../CSS/StyleIndex.css">
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
<body>
<%
String name = session.getAttribute("name").toString();
%>
<header>
			<ul  id="nov">
			<li><a href="../index.jsp" >Home</a> </li>
			<li><a href="../Search.jsp">Search</a> </li>
			<li><a href="../AddStudents.jsp">Add</a> </li>
			<li><a href="../RemoveStudent.jsp">Remove</a> </li>
			<li><a href="../UpdateStudent.jsp" class="active">Update</a></li>
			<li style="float:right"><a><h2>Welcome,<%=name%></h2></a></li>
			</ul>
</header>
<form action="UpdateJDBC.jsp" method="post" id="add" class="form">
	<fieldset>
		<legend><b>Student Details</b></legend>
		<table>
		<%
		String id = request.getParameter("id");
		session.setAttribute("id", id);
		try{
		OpenConnection.openConnection();
		String sql = "select * from students where idstudent= '"+id+"'";
		OpenConnection.resultSet = OpenConnection.statement.executeQuery(sql);
		while(OpenConnection.resultSet.next()){
		%>
			<tr>
			<td> Student Name: </td>
			<td><input type="text" name="name" id="name" value="<%out.println(OpenConnection.resultSet.getString(2));%>"></td>
			</tr>
			<tr>
			<td>Mobile No: </td>
			<td><input type="text" name="contact" value="<%out.println(OpenConnection.resultSet.getString(5));%>"></td>
			</tr>
			<tr>
			<td>EmailId: </td>
			<td><input type="email" name="email" value="<%out.println(OpenConnection.resultSet.getString(3));%>"></td>
			</tr>
			<%}
		}catch(Exception e){
				out.println(e);
			}
			%>
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
				<td><input type="submit" value="Submit"></td>
			</tr>
		</table>
	</fieldset>
	</form>
	<footer style="margin-top: 15%;">
	<ul>
	<li style="font-size: 1.5em;float: right;bottom: 0;"><a href="Login.jsp">LogOut</a></li>
	<li style="font-size: 1.5em;float: right;bottom: 0;"><a href="RegisterPage.jsp">SignUp</a></li>
	</ul>
</footer>
</body>
</html>