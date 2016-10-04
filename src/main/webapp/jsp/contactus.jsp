<!DOCTYPE html>
<html lang="en">
<head>
<title>Lattice Furniture</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet" href="resources/style1.css">
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
padding-top: 100px;
 padding-bottom: 300px;
}
</style>
</head>
<body>
<%@include file="header.jsp"%>

<!-- jumbotron img -->
<div class="jumbotron" style="background-image: url(resources/slide2.jpg); background-size: 100%;">
</div>

<a href="home">HOME</a> | <a href="contactus">CONTACT US</a>
<div class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT US</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Chennai,India</p>
      <p><span class="glyphicon glyphicon-phone"></span> +91 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> lattice@hotmail.com</p> 
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div> 
    </div>
  </div>
</div>
<%@include file="footers.jsp"%>
</body>
</html>