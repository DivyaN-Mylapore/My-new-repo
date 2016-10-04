<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Lattice Furniture</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet" href="resources/css/style1.css">
<link href="<c:url value='resources/css/style1.css'/>" rel="stylesheet" type="text/css" media="all" />
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
</style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top navbar-transparent" style="background-color:#9e0c36" >
  <div class="container">
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="index">Lattice</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-left">
        <li><a href="front.jsp">HOME</a></li>
        <li><a href="aboutus.jsp">ABOUT US</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="homefurni">HOME FURNITURE <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="sofa">SOFA</a></li>
            <li><a href="cot">COT</a></li>
            <li><a href="#">TV CABINET</a></li>
            <li><a href="#">SHOE CABINET</a></li>
            </ul>
            </li>
            <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="officefurni">OFFICE FURNITURE <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">CONFERENCE TABLE</a></li>
            <li><a href="#">OFFICE CHAIR</a></li>
            <li><a href="#">OFFICE TABLE</a></li>
            </ul>
            </li>
            <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="kitchen">MODULAR KITCHEN<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">DINING TABLE</a></li>
            <li><a href="#">DINING CHAIRS</a></li>
            <li><a href="#">KITCHEN CABINET</a></li>
            </ul>
            </li>
        <li><a href="contactus.jsp">CONTACT</a></li>
      </ul>
            <ul class="nav navbar-nav navbar-right">
            <li><a href="mycart">Add Cart</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        </ul>
      
    </div>
  </div>
</nav>

</body>
</html>