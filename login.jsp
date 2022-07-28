<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<%-- <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" />
 --%>
 
<style type="text/css"> 
  @charset "UTF-8";

* {
	box-sizing: border-box;
	font-family: monospace;
}

body {
	margin: 0;
	padding: 0;
}

button, input, label {
	outline: none;
	font-size: 1.9em;
	padding: 1%;
	width: 98%;
}

h1, h2, h3 {
	margin: 0;
	padding: 1em;
	text-align: center;
}

.container {
	width: 100%;
	margin: 0 auto;
	padding: 1em 2em;
}

.heading {
	width: 100%;
}

.option {
	margin: 2em auto;
	font-size: 1em;
	width: 50%;
}

.option a {
	width: 100%;
	text-decoration: none;
}

form {
	width: 52%;
	margin: 1% auto;
	padding: 1em 2em;
}

form table {
	width: 100%;
	border-collapse: separate;
	border-spacing: 0 1em;
}
</style> 
 
 </head>
<body>



	 <div class="container">
		<div class="heading">
			<h1>User Login</h1>
		</div>
		<div class="heading">
			<h2 style="color: red;">${message}</h2>
		</div>
		<form:form action="login"  method="post" modelAttribute = "user">
			<table>
				<tr>
					<td><label>Username</label></td>
					<td><form:input path="userName" value="" required="true"></form:input></td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><form:password path="password" value="" required="true" ></form:password></td>
				</tr>
				<tr>
					<td colspan="2"><form:button type="submit" name="login">Login</form:button></td>
				</tr>
				<tr>
					<td>
						<a href="<c:url value="/showRegister" />">
							<button type="button" name="register">Register</button>
						</a>
					</td>
				</tr>
			</table>
		</form:form>
	</div> 
</body>
</html>