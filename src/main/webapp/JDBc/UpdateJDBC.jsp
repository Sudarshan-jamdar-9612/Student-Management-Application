<%@page import="com.project.jdbc.close.CloseConnection"%>
<%@page import="com.project.jdbc.open.OpenConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String id = session.getAttribute("id").toString();
	String sname = request.getParameter("name");
	String smail = request.getParameter("email");
	String[] scourse = request.getParameterValues("course");
	String scontact = request.getParameter("contact");
	String course = "";
	String sql = "";
if(scourse!=null){
for(int i=0; i<scourse.length; i++){
	course += scourse[i]+" ";
	//out.println(course+",");
}
}
	try{
		OpenConnection.openConnection();
		if(sname.length()!=0){
			sql = "update students set studentName = '"+sname+"' where idstudent='"+id+"'";
			OpenConnection.statement.executeUpdate(sql);
		}
		if(smail.length()!=0){
			sql = "update students set studentEmail = '"+smail+"' where idstudent='"+id+"'";
			OpenConnection.statement.executeUpdate(sql);
		}
		if(course.length()!=0){
			sql = "update students set studentCourse = '"+course+"' where idstudent='"+id+"'";
			OpenConnection.statement.executeUpdate(sql);
			out.println(course+",");
		}
		if(scontact.length()!=0){
			sql = "update students set studentContact = '"+scontact+"' where idstudent='"+id+"'";
			OpenConnection.statement.executeUpdate(sql);
		}
		
	}catch(Exception e){
		out.println(e);
	}
finally{
	CloseConnection.closeConnection();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JDBC_Update</title>
<link rel="stylesheet" type="text/css" href="CSS/StyleIndex.css">
</head>
<body>
<h1>Student details Updated</h1>
<h3>
</h3>
<%
response.sendRedirect("../UpdateStudent.jsp");
%>
</body>
</html>