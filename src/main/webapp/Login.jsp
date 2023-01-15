<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<link rel="stylesheet" type="text/css" href="CSS/StyleIndex.css">
<body>
<div id="loginForm">
		<form action="JDBCLogin.jsp" method="post" style="margin: 5%;">
		<fieldset>
			<legend><b>Login Form</b></legend>
			<table>
				<tr>
					<td><label> Username :</label></td>
					<td><input type="text" placeholder="Enter Your UserName here.." name="username" required="required"></td>
				</tr>
				<tr>
					<td><label> Password :</label></td>
					<td><input type="password" placeholder="Enter Your Password here.." name="password" required="required"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit"></td>
					<td><a href="RegisterPage.jsp">Don't have an Account?</a>
				</tr>
			</table>
		</fieldset>
		</form>
	</div>
</body>
</html>