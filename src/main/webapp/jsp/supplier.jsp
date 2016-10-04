
	
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<!DOCTYPE html>
<html lang="en">
<head>
<title>Lattice Furniture</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value='resources/css/style1.css'/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='resources/css/table.css'/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='resources/css/box.css'/>" rel="stylesheet" type="text/css" media="all" />


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
 function myFunction() {
	 {
	      var x = confirm("Are you sure you want to delete?");
	      if (x)
	          return true;
	      else
	        return false;
	    }
    
}
/*  var myapp=angular.module("myapp",[])
 var v=${li};
 myapp.controller('categoryController',function($scope)
 		{
 	$scope.listCategory=v;
 		}); */
</script>
	
<style type="text/css">
.navbar navbar-default navbar-fixed-top {
	background-color: #9e0c36;
	border-color: #9e0c36;
}

.jumbotron {
	/* background-image: url("/resources/slide2.jpg"); */
	/* background-size: cover; */
	padding-top: 100px;
	padding-bottom: 300px;
}
.table-bordered
{
	border: 4px solid #ddd;
	width:70%;
}
.tg
{
	border-collapse:collapse;
	border-spacing: 0;
	border-color: #ccc;
}
.tg td 
{
	font-family: Arial,sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-width: 1px;
	overflow: hidden;
	word-break:normal;
	color: #333;
	background-color: #fff; 
}
.tg th
{
	font-family: Arial,sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break:normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}
.tg .tg-4eph:ACTIVE
{
	background-color: #f9f9f9;
}
input /* [type="text"],[type="password"] */ {
	height: 45px;
	width: 300px;
	font-size: 18px;
	
	margin-bottom: 20px;
	border-radius: 4px;
	background-color: #f5f5f5;
	padding-left: 30px;
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
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="jsp/front.jsp"><span
							class="glyphicon glyphicon-log-in"></span>Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- box -->
	<div class="boxed">
		<a href="categories">CATEGORY</a> 
		<a href="suppliers">SUPPLIER</a> 
		<a href="products">PRODUCT</a>

	</div>
	<!-- category form -->
 <div ng-app="myapp" ng-controller="categoryController">			
<div align="center">
<h3>Supplier</h3>
<hr/>
	<c:url var="addAction" value="/supplier/add"></c:url>

	<form:form action="${addAction}" commandName="supplier">
		<table class="tg">
			<%--  <tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty supplier.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" patttern =".{6,7}" required="true" title="id should contains 6 to 7 characters" /></td>
					</c:otherwise>
				</c:choose>  --%>
			<tr>
<%-- 			<form:input path="id" hidden="true"  />
 --%>				<td><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="address">
						<spring:message text="Address" />
					</form:label></td>
				<td><form:input path="address" required="true" /></td>
			</tr>
			<tr>
				<td colspan="2"><br/>
				<c:if test="${!empty supplier.name}">
						<input type="submit"
							value="<spring:message text="Edit Supplier"/>" />
						
						</c:if> <br/><c:if test="${empty supplier.name}">
						<input type="submit"
							value="<spring:message text="Add Supplier"/>" />
						
					</c:if></td>
			</tr>
		</table>
	</form:form>
	
	
	<br>
	
	<h3>Supplier </h3>
	<div class="row">
			<div class="col-md-6">
	<c:if test="${!empty supplierList}">
		<table class="table table-bordered">
			<tr>
				<th width="80">Supplier ID</th>
				<th width="120">Supplier Name</th>
				<th width="120">Supplier Address</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${supplierList}" var="supplier">
				<tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>
					<td><a href="<c:url value='supplier/edit/${supplier.id}'/>"><button type="button" class="btn btn-primary">Edit</button></a></td>
					<td><a href="<c:url value='supplier/remove/${supplier.id}'/>"><button type="submit" id="demo" Onclick="return myFunction();" value="1" class="btn btn-primary">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
	</div>
	</div>
<%@include file="footers.jsp"%>
</body>
</html>