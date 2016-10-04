<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%-- <link type="text/css" rel="stylesheet" href="<c:url value='/resources/css/login.css'>">
 --%>
 <link href="<c:url value='resources/css/login.css'/>" rel="stylesheet" type="text/css" media="all" />
 <link href="<c:url value='resources/css/style2.css'/>" rel="stylesheet" type="text/css" media="all" />

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.js"></script>
<script type="text/javascript">

function myFunction(){
	alert("you successfully logged in");
	
}
</script>

<style type="text/css">
body {
	margin: 0 auto;
 	background-image: url("./images/bg.png"); 
	background-repeat: no-repeat;
	/* background-size:100% 720px; */
}

.container {
	width: 500px;
	height: 400px;
	text-align: center;
	background-color: rgba(83, 43, 97, 0.7);
	border-radius: 4px;
	margin: 0 auto;
	margin-top: 150px;
}

.container h1 {
	font-size: 36px;
	color: white;
}

.container h4 {
	font-size: 10px;
	color: white;
}

input /* [type="text"],[type="password"] */ {
	height: 45px;
	width: 300px;
	font-size: 18px;
	border: none;
	margin-bottom: 20px;
	border-radius: 4px;
	background-color: #fff;
	padding-left: 30px;
}

.btn-login {
	height: 50px;
	width: 100px;
	padding: 10px 20px;
	cursor: pointer;
	color: #fff;
	border-radius: 4px;
	border: none;
	background-color: #c4225e;
	border-bottom: 4px solid #921c47;
	margin-bottom: 20px;
}

a {
	color: #fff;
}
</style>
</head>
<body> 
<!-- 	<div class="bg"> -->



		<div class="container">
			<h1>Login</h1>
			<br>
			<form:form action="./isValidUser" method="POST">
				<div class="form-input">
					<input type="text" name="userId" placeholder="Username" required="true">
				</div>
				<br>
				<div class="form-input">
					<input type="password" name="password" placeholder="Password" required="true">
				</div>
				<br>
				<!-- <div class="checkbox">
			<input type="checkbox" checked="checked">Remember me
			</div> -->
				<input type="submit" name="submit" value="LOGIN" class="btn-login" onclick="myFunction();"><br>
				<a href="#">Forget password?</a><br>
				<h4>Not Registered?</h4>
				<a href="signup">Register here</a>
		</div>
		</form:form>
	<!-- 	<ul class="cb-slideshow">
            <li><span>Image 01</span><div><h3><img alt="Life" src="resources/images/bg.png"></h3></div></li>
            <li><span>Image 02</span><div><h3><img alt="Life" src="resources/images/00.jpg"></h3></div></li>
            <li><span>Image 03</span><div><h3><img alt="Life" src="resources/images/12.jpg"></h3></div></li>
            <li><span>Image 04</span><div><h3><img alt="Life" src="resources/images/7.jpg"></h3></div></li>
        </ul> -->
</body>
</html>