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
session.setAttribute("id",id);
try{
OpenConnection.openConnection();
String check = "select * from students where idstudent = '"+id+"'";
OpenConnection.resultSet = OpenConnection.statement.executeQuery(check);

if(OpenConnection.resultSet.next()){
	session.setAttribute("msg1","Requested data Processed");}
else{
	session.setAttribute("msg1","Out Of Range,Data that you are looking for  Not present");
}
}catch(Exception e){
	out.println(e);
}
finally{
	CloseConnection.closeConnection();
}
response.sendRedirect("../Search.jsp");
%>
</body>
</html>