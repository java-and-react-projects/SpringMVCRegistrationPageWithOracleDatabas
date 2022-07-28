<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<!-- link rel="stylesheet" type="text/css" href="/resources/css/style.css"> -->
 

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
		
			<h1 text-align="center">WELCOME TO HOME PAGE</h1>
		</div>
		<div class="option">
			<a href="showLogin">
				<button type="button">Login</button>
			</a>
		</div>

		<div class="option">
			<a href="showRegister">
				<button type="button">Register</button>
			</a>
		</div>
	</div>
</body>
</html>