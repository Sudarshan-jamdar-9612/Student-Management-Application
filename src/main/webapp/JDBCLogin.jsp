<%@page import="com.project.jdbc.close.CloseConnection"%>
<%@page import="com.project.jdbc.open.OpenConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
session.setAttribute("name",username); //making it accessible for further jsp by creating username as object
try{
	String sql = "select * from admin_details";//"select * from admin_details where username = '"+username+"' and password='"+password+"'";
	OpenConnection.openConnection();
	OpenConnection.resultSet = OpenConnection.statement.executeQuery(sql);
	
	while(OpenConnection.resultSet.next()){
		out.println(OpenConnection.resultSet.getString(1));
	if(OpenConnection.resultSet.getString(1).equals(username) && OpenConnection.resultSet.getString(2).equals(password)){
		response.sendRedirect("index.jsp");
	}
	else{
		response.sendRedirect("Login.jsp");
	}
	}
}catch(Exception e){
	out.println(e);
	//response.sendRedirect("Login.jsp");
}
finally{
	CloseConnection.closeConnection();
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Credentials</title>
</head>
<body>

</body>
</html>