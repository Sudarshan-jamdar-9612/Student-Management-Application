<%@page import="com.project.jdbc.close.CloseConnection"%>
<%@page import="com.project.jdbc.open.OpenConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
try{
OpenConnection.openConnection();
String sql = "delete from students where idstudent='"+id+"'";
OpenConnection.statement.executeUpdate(sql);
}
catch(Exception e){
	out.println(e);
}
finally{
	CloseConnection.closeConnection();
}
response.sendRedirect("../RemoveStudent.jsp");
%>
</body>
</html>