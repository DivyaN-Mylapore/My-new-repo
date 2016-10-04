<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Lattice Furniture</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet" href="resources/css/style1.css">
<link href="<c:url value='resources/css/style1.css'/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='resources/css/header.css'/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='resources/css/shake.css'/>" rel="stylesheet" type="text/css" media="all" />

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
.table-bordered
{
	border: 4px solid #ddd;
	width:70%;
}

.footer {
    width: 100%;
    height: 60px;
    background: red;
    position: fixed;
    bottom: 0;
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
        <li><a href="front">HOME</a></li>
        <li><a href="jsp/aboutus.jsp">ABOUT US</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="homefurni">HOME FURNITURE <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="sofa">SOFA</a></li>
            <li><a href="cot">COT</a></li>
            <li><a href="tvcabinet">TV CABINET</a></li>
            </ul>
            </li>
            <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="officefurni">OFFICE FURNITURE <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="conference table">CONFERENCE TABLE</a></li>
            <li><a href="officechair">OFFICE CHAIR</a></li>
          
            </ul>
            </li>
            <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="kitchen">MODULAR KITCHEN<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="diningtable">DINING TABLE</a></li>
            <li><a href="diningchair">DINING CHAIRS</a></li>
            
            </ul>
            </li>
        <li><a href="jsp/contactus.jsp">CONTACT</a></li>
      </ul>
            <ul class="nav navbar-nav navbar-right">
            <c:if test="${not empty cartSize}">	
            <li><a href="mycart">Add Cart</a>( ${cartSize}
							)</li>
							</c:if>
             <c:choose>
 						<c:when test="${empty loggedInUser}">
       <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
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
      <!-- <div class="col-sm-3 col-md-3 pull-right">
        <form class="navbar-form" role="search">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
            <div class="input-group-btn">
                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
        </form>
        </div> -->
    </div>
  </div>
</nav>
<!--  Carousel-->
	<div class="jumbotron text-center">
		<div id="myCarousel" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
				
					<img src= "<c:url value='images/7.jpg'/>" alt="">
				</div>
				<div class="item">
					<img src= "<c:url value='images/FL.jpg'/>" alt="">
					</div>
					<div class="item">
					<img src= "<c:url value='images/00.jpg'/>" alt="">
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>

		</div>

<!-- panel -->
		<div class="container-fluid ">
			<div class="row">
				<div class="col-sm-2">
					<div class="panel panel-default text-center">
						<div class="panel-heading">
							<h1>Sofa</h1>
						</div>
						<div class="panel-body">
							<div class="thumbnail">
								<img src="images/lsofa.jpg" alt="Leather fabric sofa">
							</div>
						</div>
						<div class="panel-footer">
<!-- 							<h3>Rs.16,000</h3>
 -->							<!-- <h4>per month</h4> -->
							<a href="prodinfo?id=Leather fabric sofa"><%-- sofa?userId=${loggedInUserId} --%><button class="btn btn-lg">View</button></a>
						</div>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="panel panel-default text-center">
						<div class="panel-heading">
							<h1>Cot</h1>
						</div>
						<div class="panel-body">
							<div class="thumbnail">
								<img src="images/Duetto Bed.jpg" alt="Duetoo Bed">
							</div>
						</div>
						<div class="panel-footer">
							<!-- <h3>Rs.3,459</h3> -->
							<a href="prodinfo?id=Duetto Bed"><button class="btn btn-lg">More Details</button></a>
						</div>
					</div>
				</div>

				<div class="col-sm-2">
					<div class="panel panel-default text-center">
						<div class="panel-heading">
							<h1>Dining Table</h1>
						</div>
						<div class="panel-body">
							<div class="thumbnail">
								<img src="images/Wesley Dining Table.jpg" alt="Paris">
							</div>
						</div>
						<div class="panel-footer">
<!-- 							<h3>Rs.3,459</h3>
 -->							<a href="prodinfo?id=Wesley Dining Table"><button class="btn btn-lg">More Details</button></a>
						</div>
					</div>
				</div>

				<div class="col-sm-2">
					<div class="panel panel-default text-center">
						<div class="panel-heading">
							<h1>Office Chair</h1>
						</div>
						<div class="panel-body">
							<div class="thumbnail">
								<img src="images/Ray office chair.jpg" alt="Office Chair">
							</div>
						</div>
						<div class="panel-footer">
<!-- 							<h3>Rs.3,459</h3>
 -->							<a href="prodinfo?id=Ray office chair"><button class="btn btn-lg">More Details</button></a>
						</div>
					</div>
				</div>

				<div class="col-sm-2">
					<div class="panel panel-default text-center">
						<div class="panel-heading">
							<h1>Tv Unit</h1>
						</div>
						<div class="panel-body">
							<div class="thumbnail">
								<img src="images/vetcor tv unit.jpg" alt="Tv Unit">
							</div>
						</div>
						<div class="panel-footer">
<!-- 							<h3>Rs.3,459</h3>
 -->							<a href="prodinfo?id=Sawyer Tv Unit"><button class="btn btn-lg">More Details</button></a>
						</div>
					</div>
				</div>

				<div class="col-sm-2">
					<div class="panel panel-default text-center">
						<div class="panel-heading">
							<h1>Conference Table</h1>
						</div>
						<div class="panel-body">
							<div class="thumbnail">
								<img src="images/ola conference table.jpeg" alt="conference table">
							</div>
						</div>
						<div class="panel-footer">
<!-- 							<h3>Rs.18,000</h3>
 -->							<a href="prodinfo?id=Ola Conference Table"><button class="btn btn-lg">More Details</button></a>
						</div>
					</div>
				</div>
			</div>
</div>
	 <div id="registerHere">
				<c:if test="${isUserClickedRegisterHere==true}">
				<a href="signup.jsp"/>
<%-- 					<%@ include file="signup.jsp"%>

 --%>				</c:if>
			</div>
			<div id="loginHere">
				<c:if test="${isUserClickedLoginHere==true || invalidCredentials==true}">
				  <div id = "error">  ${errorMessage} </div>
				  				<a href="login.jsp"/>
				  
<%-- 					<%@ include file="login.jsp"%>
 --%>				</c:if>
			</div>
			<div id="admin">
				<c:if test="${isAdmin==true}">

					<%@ include file="adminHome.jsp"%>
			</c:if>
			<div id="categories">
					<c:if test="${isAdminClickedCategories==true}">
						<%@ include file="adminHome.jsp"%>
						<%@ include file="category.jsp"%>
					</c:if>
				</div>

				<div id="products">
					<c:if test="${isAdminClickedProducts==true}">
						<%@ include file="adminHome.jsp"%>
						<%@ include file="product.jsp"%>
					</c:if>
				</div>

				<div id="suppliers">
					<c:if test="${isAdminClickedSuppliers==true}">
						<%@ include file="adminHome.jsp"%>
						<%@ include file="supplier.jsp"%>
					</c:if>
				</div>		
			</div>
			
<br>
<br/>

    <%--  <%@include file="footers.jsp"%> --%>
 </body>
</html>

