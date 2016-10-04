<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
background-size: 100%;
/*  background-image: url("/resources/sobg.jpg"); 
 *//* background-size: cover; */
padding-top: 0px;
 padding-bottom: 300px;
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
					<li><a href="index">HOME</a></li>
					<li><a href="aboutus">ABOUT US</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="homefurni">HOME FURNITURE <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="sofa">SOFA</a></li>
							<li><a href="cot">COT</a></li>
							<li><a href="#">TV CABINET</a></li>
							<li><a href="#">SHOE CABINET</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="officefurni">OFFICE FURNITURE <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">CONFERENCE TABLE</a></li>
							<li><a href="#">OFFICE CHAIR</a></li>
							<li><a href="#">OFFICE TABLE</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="kitchen">MODULAR KITCHEN<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">DINING TABLE</a></li>
							<li><a href="#">DINING CHAIRS</a></li>
							<li><a href="#">KITCHEN CABINET</a></li>
						</ul></li>
					<li><a href="contactus">CONTACT</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="mycart">Add Cart</a></li>
					<li><a href="login"><span
							class="glyphicon glyphicon-log-in"></span>Login</a></li>
					<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
				</ul>

			</div>
		</div>
	</nav>
	
	
	<div class="jumbotron" style="background-image: url(resources/images/sobg.jpg); background-size: 100%;">
</div>
 WELCOME${userId} These are the books available
                    <div class="container">
                        <div class="col-md-12">
                            <h2>Products</h2>
                           
                        </div>
                    </div>


<a href="index">HOME</a> | <a href="sofa">SOFA</a>

<!-- panel -->
		<div class="container-fluid ">
			<div class="row">
			
					<c:forEach var="productList" items="${productList}">
				<div class="col-sm-3">
					<div class="panel panel-default text-center">
						<!-- <div class="panel-heading">
							<h1>Dining Table</h1>
						</div> -->
						<div class="panel-body">
							<div class="thumbnail">
								<img src="./resources/images/fsofa.jpg" alt="Fabric Sofa">
							</div>
						</div>
						<div class="panel-footer">
						<h3 >${productList.name}</h3>
							<h3>${productList.price}</h3>
							<!-- <h4>per month</h4> -->
<a href="raven?bookId=${productList.id}&userId=${userId}">More details</a>						</div>
					</div>
				</div>
				</c:forEach>
				<div class="col-sm-3">
					<div class="panel panel-default text-center">
						<!-- <div class="panel-heading">
							<h1>Shoe Cabinet</h1>
						</div> -->
						<div class="panel-body">
							<div class="thumbnail">
								<img src="./resources/images/lsofa.jpg" alt="Leather Sofa">
							</div>
						</div>
						<div class="panel-footer">
						<h3>Leather Sofa</h3>
							<h3>Rs.94,999</h3>
							<button class="btn btn-lg">More Details</button>
						</div>
					</div>
				</div>

				<div class="col-sm-3">
					<div class="panel panel-default text-center">
						<!-- <div class="panel-heading">
							<h1>Shoe Cabinet</h1>
						</div> -->
						<div class="panel-body">
							<div class="thumbnail">
								<img src="./resources/images/tsofa.jpg" alt="Thiene Sofa">
							</div>
						</div>
						<div class="panel-footer">
						<h3>Thiene Sofa</h3>
							<h3>Rs.1,09,999</h3>
							<button class="btn btn-lg">More Details</button>
						</div>
					</div>
				</div>

				<div class="col-sm-3">
					<div class="panel panel-default text-center">
						<!-- <div class="panel-heading">
							<h1>Shoe Cabinet</h1>
						</div> -->
						<div class="panel-body">
							<div class="thumbnail">
								<img src="./resources/images/rsofa.jpg" alt="Recliner Sofa">
							</div>
						</div>
						<div class="panel-footer">
						<h3>Recliner Sofa</h3>
							<h3>Rs.37,999</h3>
							<button class="btn btn-lg">More Details</button>
						</div>
					</div>
				</div>


			</div>
			</div>
	</body>
	</html>