<%@page import="com.project.jdbc.close.CloseConnection"%>
<%@page import="com.project.jdbc.open.OpenConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String username = request.getParameter("username");
String emailID = request.getParameter("emailID");
String password = request.getParameter("password");
out.println(username + "," + emailID + "" + password);
try {
	String sql = "insert into admin_details values('" + username + "','" + password + "','" + emailID + "')";
	OpenConnection.openConnection();
	int r = OpenConnection.statement.executeUpdate(sql);
} catch (Exception e) {
	out.println(e);
} finally {
	CloseConnection.closeConnection();
}
%>
<%
response.sendRedirect("Login.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connection</title>
</head>
<body>

</body>
</html>