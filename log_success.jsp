<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login successfully</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" />

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
	padding: 0.5em;
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
		<div class="heading"><h3>${message}</h3><br><br>
		<h1>First Name: ${user.getFirstName()}</h1>
		<h1>Last Name: ${user.getLastName()}</h1>
		<h1>Email id: ${user.getEmail()}</h1>
		<h1>Date Of Birth: ${user.getDob()}</h1>
		<h1>Gender: ${user.getGender()}</h1>
		<h1>Address: ${user.getAddress()}</h1>
		
			
		</div>
		<div class="option">
			<a href="<c:url value="/" />">
							<button type="button" name="register">Home</button>
						</a>
		</div>
	</div>
</body>
</html>