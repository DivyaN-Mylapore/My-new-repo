<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Lattice Furniture</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet" href="resources/css/style1.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.navbar navbar-default navbar-fixed-top {
    background-color: #9e0c36;
    border-color: #9e0c36;
}
.jumbotron {
/* background-image: url("/resources/slide2.jpg"); */
/* background-size: cover; */
padding-top: 260px;
 padding-bottom: 300px;
}
.boxed {
border-radius: 24px;
  border: 7px solid #9e0c36 ;
      margin-left: 300px;
    margin-right: 300px;
    margin-top: 150px;
    margin-bottom: 150px;
    padding-left: 20px;
    height: 200px;
    width: 720px;
}
/* .btn
{
border-radius: 24px;

    margin-left: 0px;
    margin-top: 70px;
    margin-right: 20px;
    width:200px;
} */
.boxed a:link, a:visited {
    background-color: #a12f50;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    border-radius: 24px;
    margin-left: 0px;
    margin-top: 70px;
    margin-right: 20px;
    width:200px;
}


.boxed a:hover, a:active {
    background-color: #9e0c36 ;
}
</style>

</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top navbar-transparent"
		style="background-color: #9e0c36">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index">Lattice</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-left">
					<li><a href="#adminhome">ADMIN HOME</a></li>
					
					<ul class="nav navbar-nav navbar-right">
			<c:choose>				
<c:when test="${empty loggedInUser}">
       <li><a href="login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
 </c:when>
	 <c:when test="${not empty loggedInUser}">
							<td>Welcome ${loggedInUser},</td>
							<td align="right"><a href="logout"> Logout</a></td>
						</c:when>
					</c:choose>
					
					<c:if test="${loggedOut==true}">
						<td>${logoutMessage}</td>
					</c:if>
					
				</ul>
				</ul>			

			</div>
		</div>
	</nav>
	<div class="jumbotron" style="background-image: url(resources/images/12.jpg);padding-top: 260px;background-size: 100%;">
</div>
<br>
<br>
 ${message} 
<div class="boxed">
<a href="categories">CATEGORY</a>
<a href="suppliers">SUPPLIER</a>
<a href="products">PRODUCT</a>


<!--    <div class="btn-group btn-group-justified" >
  <div class="btn-group " > 
  <button type="button" class="btn btn-primary btn-lg" action="categories">CATEGORY</button>
   </div> 
   <div class="btn-group"> 
  <button type="button" class="btn btn-primary btn-lg">SUPPLIER</button>
   </div> 
    <div class="btn-group"> 
  <button type="button" class="btn btn-primary btn-lg">PRODUCT</button>
  </div>
  </div>  -->
</div>
  </div>
  <%@include file="footers.jsp"%>
  </body>
  </html>