<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<link rel="stylesheet" type="text/css" href="CSS/StyleIndex.css">
<script>
	window.onload = function() {
		document.getElementById('form').onsubmit = function() {
			var pass = document.getElementById("password").value;
			if (!pass) {
				alert("Please Enter the Details");
				return false;
			}
			return confirm("Data Submitted succesfully!!,Redirecting to Login Page");
		}
	}
</script>
</head>
<body>
	<div id="RegisterForm">
		
		<form action="JDBConnection.jsp" id="form" style="margin: 5%;">
		<fieldset>
		<legend><b>Registration Form</b></legend>
			<table>
				<tr>
					<td><label>Username :</label></td>
					<td><input type="text" name="username" placeholder="Enter Username" required="required"></td>
				</tr>
				<tr>
					<td><label>Email Id:</label></td>
					<td><input type="email" name="emailID" placeholder="Enter EmailId" required="required"></td>
				</tr>
				<tr>
					<td><label>Password :</label></td>
					<td><input type="password" name="password" id="password" placeholder="Enter Password" required="required"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit"></td>
					<td><input type="reset" value="Reset"></td>
				</tr>
			</table>
			<a href="Login.jsp">Account Already Exist? Login Here!</a>
		</fieldset>
		</form>
	</div>
</body>
</html>