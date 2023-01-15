<%@page import="com.project.jdbc.close.CloseConnection"%>
<%@page import="com.project.jdbc.open.OpenConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
String sname = request.getParameter("name");
String smail = request.getParameter("email");
String[] scourse = request.getParameterValues("course");
String sgender = request.getParameter("gen");
String scontact = request.getParameter("contact");
String sdob = request.getParameter("dob");
String sql = "";
String course = "";

for(int i=0; i<scourse.length; i++){
	course += scourse[i]+" ";
}
try{
OpenConnection.openConnection();
sql = "select count(*) from students where studentEmail = '"+smail+"'";
OpenConnection.resultSet = OpenConnection.statement.executeQuery(sql);
OpenConnection.resultSet.next();
String c = OpenConnection.resultSet.getString(1);
out.println(c+"_");//if data is not present thn count is 0 if data present thn count is 1

if(c.equals("0")){
sql = "insert into students(studentName,studentEmail,studentCourse,studentContact,studentDOB,studentGender) values('"+sname+"','"+smail+"','"+course+"','"+scontact+"','"+sdob+"','"+sgender+"');";
OpenConnection.statement.executeUpdate(sql);
session.setAttribute("msg","Data Inserted");
out.print(scontact.length());
}
else{
	session.setAttribute("msg","Data Already Exist!");
}
}catch(Exception e){
	out.println(e);
}
finally{
	CloseConnection.closeConnection();
}
response.sendRedirect("../AddStudents.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add</title>
<link rel="stylesheet" type="text/css" href="CSS/StyleIndex.css">
</head>
<body>
</body>
</html>