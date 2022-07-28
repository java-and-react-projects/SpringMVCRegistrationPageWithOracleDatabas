<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
<link type="text/css" rel="Stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/start/jquery-ui.css" />


                      <!-- CSS Part Implementation -->


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


                            <!--    JavaScript Part Implementation -->

<script>
	function VerifyFirstName() {
		var firstName = document.getElementById("txtName").value;

		var letters = /^[A-Za-z]+$/;

		var msg1 = document.getElementById("msg1");
		if (!firstName.match(letters)) {
			msg1.innerHTML = "Not contain a number and special characte";

		} else if (firstName.length<2) {
			msg1.innerHTML = "First Name length must be grater than 1";
		} 
		else if (firstName.length>1){
			msg1.innerHTML = "";
		} 
	}
	
	function VerifyLastName() {
		var lastName = document.getElementById("txtName1").value;

		var letters = /^[A-Za-z]+$/;
		var msg2 = document.getElementById("msg2");
		if(!lastName.match(letters)) {
			msg2.innerHTML = "Not contain a number and special character";
			
		}else if (lastName.length<2) {
			msg2.innerHTML = "Last name length must be grater than 1";
		} 
		else if (lastName.length>1){
			msg2.innerHTML = "";
		} 
	}
	

	function VerifyUserName() {
		var userName = document.getElementById("txtUser").value;
		var msg4 = document.getElementById("msg4");
		
		if (userName.length<2) {
			msg4.innerHTML = "User Name length must be grater than 2";
		} 
		else if (userName.length>2){
			msg4.innerHTML = "";
		}
	}

	function VerifyPassword() {
		var password = document.getElementById("txtPwd").value;
		var regExp = "^(?=.*[0-9])" + "(?=.*[a-z])(?=.*[A-Z])"
				+ "(?=.*[@#$%^&+=])" + "(?=\\S+$).{8,20}$";
		var msg = document.getElementById("msg");
		if (password.match(regExp)) {
			msg.innerHTML = "";
			
		} else {
			if (password.length < 8) {
				msg.innerHTML = "Password length must be grater than 8";
				
			} else {
				msg.innerHTML = "Enter atleast one number,one spacel symbol, one upercase, and one lower case character";
				
			}
		}
	}

	function VerifyConfirmPassword() {
		var confirmPassword = document.getElementById("txtPwd1").value;
		var password = document.getElementById("txtPwd").value;
		var regExp = "^(?=.*[0-9])" + "(?=.*[a-z])(?=.*[A-Z])"
				+ "(?=.*[@#$%^&+=])" + "(?=\\S+$).{8,20}$";
				var msg3 = document.getElementById("msg3");
				
					if (confirmPassword.length < 8) {
						msg3.innerHTML = "Confirm Password length must be grater than 8";
						
					} else {
						if(!confirmPassword.match(regExp)){
						msg3.innerHTML = "Enter atleast one number,one spacel symbol, one upercase, and one lower case character";
						
					}
						else{
							if(password!=confirmPassword){
								msg3.innerHTML = "Password and confirm password does not match";
							}
							else{
								
									msg3.innerHTML = "";
									
								
							}
						}
						
				}
	}
	
	
	
	function VerifyEmail() {
		
		var email = document.getElementById("txtEmail").value;
         console.log(email);
         var msg6 = document.getElementById("msg6");
         var atposition=email.indexOf("@");  
         var dotposition=email.lastIndexOf(".");  
         if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){  
        	 msg6.innerHTML = "Please Enter vaild email id "; 
           }   
		else if(!(atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length)){
			msg6.innerHTML = "";
		}	
	}
	

 	function VerifyGender() {
		var gender = document.getElementById("txtGender").value;
      // console.log(gender);
		
		
		var msg8 = document.getElementById("msg8");
		if(gender=="Male" || gender=="Female" || gender=="other") {
			msg8.innerHTML = "";
			
		} 
		else{
			msg8.innerHTML = "Please select a valid gender";
			
		}
		
	} 
 	function VerifyAddress() {
		var address = document.getElementById("txtAddress").value;
		var msg7 = document.getElementById("msg7");
		console.log(address);
		if (address.length<5) {
			msg7.innerHTML = "Address length must be grater than 5";
		} 
		else if (address.length>5){
			msg7.innerHTML = "";
		}
	}
	 
</script>
  
<script type="text/javascript">
$(function() {
	$("#datepicker").datepicker({
		   minDate: -40000,
		   maxDate: "D"
		});
});
                  
    </script>
   
                                  
                                 <!--  User Registration Form -->
</head>
<body>
	<div class="container">
		<div class="heading">
			<h1>User Registration</h1>
		</div>
		<div class="heading">
			<h2 style="color: red;">${message}</h2>
		</div>
		<form:form action="register" modelAttribute="user" onsubmit="return Validation()" method="post">
			<table>
				<tr>
					<td><label>First Name</label></td>
					<td><form:input path="firstName" onkeyup="VerifyFirstName()"
							id="txtName" required="true" value="" /> <span
						style="color: red" id="msg1"></span></td>
				</tr>
				<tr>
					<td><label>Last Name</label></td>
					<td><form:input path="lastName" onkeyup="VerifyLastName()"
							id="txtName1" required="true" value="" /> <span
						style="color: red" id="msg2"></span></td>
				</tr>
				<tr>
					<td><label>User Name</label></td>
					<td><form:input path="userName" onkeyup="VerifyUserName()"
							id="txtUser" required="true" value="" /> <span
						style="color: red" id="msg4"></span></td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><form:password path="password" onkeyup="VerifyPassword()"
							id="txtPwd" required="true" value="" /> <span style="color: red"
						id="msg"></span></td>

				</tr>
				<tr>
					<td><label>Confirm Password</label></td>
					<td><form:password path="confirmPassword"
							onkeyup="VerifyConfirmPassword()" id="txtPwd1" required="true"
							value="" /> <span style="color: red" id="msg3"></span></td>
				</tr>
				<tr>
					<td><label>Email</label></td>
					<td><form:input type="email" path="email" onkeyup="VerifyEmail()" id="txtEmail"  required="true"
							value="" /><span style="color: red" id="msg6"></span></td>
				</tr>

				<tr>
					<td><label>Date Of Birth</label></td>
					<td><form:input  path="dob" id="datepicker" required="true"
							value="" /> <span style="color: red" id="msg9"></span></td>
				</tr>
				<tr>
					<td><label>Gender</label></td>
					<td><select name="gender" onchange="VerifyGender()" id="txtGender">
							<option value="none" selected>Gender</option>
							
							<option value="Male">Male</option>
							<option value="Female">Female</option>
							<option value="other">other</option>
					</select><span style="color: red" id="msg8"></span> </td>
				</tr>
				<tr>
					<td><label>Address</label></td>
					<td><form:input type="text" path="address" onkeyup="VerifyAddress()" id="txtAddress" required="true"
							value="" /><span style="color: red" id="msg7"></span></td>
				</tr>
				<tr>
					<td colspan="2"><form:button type="submit" name="register">Register</form:button>
					<span style="color: red" id="msg10"></span></td>
				 </tr>
				<tr>
					<td><a href="showLogin">
							<button type="button">Login</button>
					</a></td>
				</tr>
			</table>
		</form:form>
	</div> 
	
	  
	                               <!--   JavaScript Part for final Submit Validation -->
	
	 <script type="text/javascript">
    
   function Validation(){
    	
    	
    	var firstName = document.getElementById("txtName").value;
    	var lastName = document.getElementById("txtName1").value;
    	var userName = document.getElementById("txtUser").value;
		var password = document.getElementById("txtPwd").value;
        var confirmPassword = document.getElementById("txtPwd1").value;
		var email = document.getElementById("txtEmail").value;
	    var gender = document.getElementById("txtGender").value;		
		var address = document.getElementById("txtAddress").value;
		
		 
    	 var result;
    	 console.log(firstName);
		var letters = /^[A-Za-z]+$/;
		if (firstName.length<2) {
			
		result=false;
		} 
		else if (!firstName.match(letters)) {
			result=false;
		}  
	
			
			var letters = /^[A-Za-z]+$/;
			if (lastName.length<2) {
				result=false;
			} 
			else if(!lastName.match(letters)) {
				result=false;
			
		}


			
			if (userName.length<2) {
				result=false;
			} 
			
		

			var regExp = "^(?=.*[0-9])" + "(?=.*[a-z])(?=.*[A-Z])"
					+ "(?=.*[@#$%^&+=])" + "(?=\\S+$).{8,20}$";
			
					if (password.length < 8) {
						result=false;
					} 
					else if (!password.match(regExp)) {
						result=false;
			} 
				

			var regExp = "^(?=.*[0-9])" + "(?=.*[a-z])(?=.*[A-Z])"
			+ "(?=.*[@#$%^&+=])" + "(?=\\S+$).{8,20}$";
			
			if (confirmPassword.length < 8) {
				result=false;
			} 
	
			else if (!confirmPassword.match(regExp)) {
				result=false;
	         } 
		
			else if(password!=confirmPassword){
				result=false;
	        }


			var atposition=email.indexOf("@");  
	         var dotposition=email.lastIndexOf(".");  
	         if (atposition<1 || dotposition<atposition+2 || dotposition+2 >= email.length){  
	        	 result=false;
	         }
			

	
        console.log(gender);
        console.log("test");
 		
 		if(gender=="none") {
 			result=false;
              
 		} 
 		
 
		console.log(address);
		if (address.length<5) {
			result=false;
		} 
		
		if(result==false){
			document.getElementById("msg10").innerHTML="You are entering something wrong. Please check carefully before submit";
			return false;
			
		}
	}
 		 
    
  </script> 
</body>
</html>