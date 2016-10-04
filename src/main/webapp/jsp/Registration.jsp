<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration form</title>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="desc" content="An ecommerce site for  buying books">
	<meta name="keywords" content="HTML5, Bootstrap 3, CSS3, javascript, PHP, Responsive, Mobile">
    <meta name="author" content="Aishwarya"/>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
 <style type="text/css">
 @import "compass/css3";

$body-bg: #c1bdba;
$form-bg: #13232f;
$white: #ffffff;

$main: #1ab188;
$main-light: lighten($main,5%);
$main-dark: darken($main,5%);

$gray-light: #a0b3b0;
$gray: #ddd;

$thin: 300;
$normal: 400;
$bold: 600;
$br: 4px;

*, *:before, *:after {
  box-sizing: border-box;
}

html {
	overflow-y: scroll; 
}

body {
 background-image: url("images/back.jpg");
  background:$body-bg;
  font-family: 'Titillium Web', sans-serif;
}

a {
  text-decoration:none;
  color:$main;
  transition:.5s ease;
  &:hover {
    color:$main-dark;
  }
}

.form {
  background:rgba($form-bg,.9);
  padding: 40px;
  max-width:600px;
  margin:40px auto;
  border-radius:$br;
  box-shadow:0 4px 10px 4px rgba($form-bg,.3);
}

.tab-group {
  list-style:none;
  padding:0;
  margin:0 0 40px 0;
  &:after {
    content: "";
    display: table;
    clear: both;
  }
  li a {
    display:block;
    text-decoration:none;
    padding:15px;
    background:rgba($gray-light,.25);
    color:$gray-light;
    font-size:20px;
    float:left;
    width:50%;
    text-align:center;
    cursor:pointer;
    transition:.5s ease;
    &:hover {
      background:$main-dark;
      color:$white;
    }
  }
  .active a {
    background:$main;
    color:$white;
  }
}

.tab-content > div:last-child {
  display:none;
}


h1 {
  text-align:center;
  color:$white;
  font-weight:$thin;
  margin:0 0 40px;
}

label {
  position:absolute;
  transform:translateY(6px);
  left:13px;
  color:rgba($white,.5);
  transition:all 0.25s ease;
  -webkit-backface-visibility: hidden;
  pointer-events: none;
  font-size:22px;
  .req {
  	margin:2px;
  	color:$main;
  }
}

label.active {
  transform:translateY(50px);
  left:2px;
  font-size:14px;
  .req {
    opacity:0;
  }
}

label.highlight {
	color:$white;
}

input, textarea {
  font-size:22px;
  display:block;
  width:100%;
  height:100%;
  padding:5px 10px;
  background:none;
  background-image:none;
  border:1px solid $gray-light;
  color:$white;
  border-radius:0;
  transition:border-color .25s ease, box-shadow .25s ease;
  &:focus {
		outline:0;
		border-color:$main;
  }
}

textarea {
  border:2px solid $gray-light;
  resize: vertical;
}

.field-wrap {
  position:relative;
  margin-bottom:40px;
}

.top-row {
  &:after {
    content: "";
    display: table;
    clear: both;
  }

  > div {
    float:left;
    width:48%;
    margin-right:4%;
    &:last-child { 
      margin:0;
    }
  }
}

.button {
  border:0;
  outline:none;
  border-radius:0;
  padding:15px 0;
  font-size:2rem;
  font-weight:$bold;
  text-transform:uppercase;
  letter-spacing:.1em;
  background:$main;
  color:$white;
  transition:all.5s ease;
  -webkit-appearance: none;
  &:hover, &:focus {
    background:$main-dark;
  }
}

.button-block {
  display:block;
  width:100%;
}

.forgot {
  margin-top:-20px;
  text-align:right;
}
 </style>
 <script type="text/javascript">
 $('.form').find('input, textarea').on('keyup blur focus', function (e) {
	  
	  var $this = $(this),
	      label = $this.prev('label');

		  if (e.type === 'keyup') {
				if ($this.val() === '') {
	          label.removeClass('active highlight');
	        } else {
	          label.addClass('active highlight');
	        }
	    } else if (e.type === 'blur') {
	    	if( $this.val() === '' ) {
	    		label.removeClass('active highlight'); 
				} else {
			    label.removeClass('highlight');   
				}   
	    } else if (e.type === 'focus') {
	      
	      if( $this.val() === '' ) {
	    		label.removeClass('highlight'); 
				} 
	      else if( $this.val() !== '' ) {
			    label.addClass('highlight');
				}
	    }

	});

	$('.tab a').on('click', function (e) {
	  
	  e.preventDefault();
	  
	  $(this).parent().addClass('active');
	  $(this).parent().siblings().removeClass('active');
	  
	  target = $(this).attr('href');

	  $('.tab-content > div').not(target).hide();
	  
	  $(target).fadeIn(600);
	  
	});
	function phonenumber(inputtxt)  
	{  
	  var phoneno = /^\d{10}$/;  
	  if(inputtxt.value.match(phoneno))  
	  {  
	      return true;  
	  }  
	  else  
	  {  
	     alert("Not a valid Phone Number");  
	     return false;  
	  }  
	  }
	function pswdcheck() {
		var password = document.getElementById("password"), confirmpassword = document
				.getElementById("confirmpassword");

		if (password.value != confirm_password.value) {
			confirmpassword.setCustomValidity("Passwords Don't Match");
		} else {
			confirmpassword.setCustomValidity('');
		}
	}

	password.onchange = pswdcheck;
	confirmpassword.onkeyup = pswdcheck;


	function checkmail()
	{
		var email = document.getElementById("email").value;
		var x = document.forms["RegForm"]["email"].value;
		var atpos = x.indexOf("@");
		var dotpos = x.lastIndexOf(".");
		if (email == null || email == "") 
		{
           	 		alert("Please enter the email ID");
            			return false;
        }
		else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) 
		{
			alert("Not a valid e-mail address");
			return false;
		}
		else
		{
			return true;
		}
	}
	</script>
	<body>

	
	 <div class="container">
	        <div class="row centered-form">
	        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
	        	<div class="panel panel-default">
	        		<div class="panel-heading">
				    		<h3 class="panel-title">Please sign up for Booksie <small>It's free!</small></h3>
				 			</div>
				 			<div class="panel-body">
				 <form:form action="register" method="post">
			<table>
				<tr>
					<td>User ID:</td>
					<td><input type="text" name="id" required="required"></td>
				</tr>
				 <tr>
					<td>User Name:</td>
					<td><input type="text" name="name" required="required"></td>
				</tr> 
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" required="required"></td>
				</tr>
				 <tr>
					<td>Confirm Password:</td>
					<td><input type="password" name="confirmpassword" required="required"></td>
				</tr> 
				 <tr>
					<td>Mobile No:</td>
					<td><input type="text" name="phoneno" required="required"></td>
				</tr> 
				
				 <tr>
					<td>Email:</td>
					<td><input type="email" name="email" required="required"></td>
				</tr> 
				 <tr>
					<td>Address:</td>
					<td><input type="text" width="20" height="10" name="address" required="required"></td>
				</tr> 
				

				<tr>
					<td><input type="submit" value="register" onclick="myFunction();" class="btn-login"/>
					<td><input type="reset" value="Reset">
				</tr>
				
			</table>

		</form:form>
		

				    	</div>
		    		</div>
	    		</div>
	    	</div>
	    </div>
	    <script type="text/javascript">
	function myFunction(){
		alert("you have successfully registered to Booksie!!! ");
		
	}
	
	</script>
	<footer>
<div class="wrapper">
	<div class="footer">
		<div class="site-footer" itemscope
			itemtype="http://schema.org/WPFooter">
			<div class="wrap">
				<div class="footer-text">
					<ul class="social-icons">
						<li class="scocial icon"><a class="creation-twitter"
							href="http://twitter.com" rel="nofollow"></a></li>
						<li class="scocial icon"><a class="creation-facebook"
							href="http://facebook.com" rel="nofollow"></a></li>
					</ul>
					<p>Copyright ©&nbsp;2016 BOOKSIE, INC. All Rights
						Reserved.</p>
					<p>
						<a href="#" rel="nofollow">Privacy</a>
					</p>
					<p>
						<a href="#" rel="nofollow">Disclaimer</a>
					</p>
					<ul>
<li><a href="http://facebook.com/"><i class="fa fa-facebook"></i></a></li>
<li><a href="http://linkedin.com/"><i class="fa fa-linkedin"></i></a></li>
<li><a href="http://twitter.com/"><i class="fa fa-twitter"></i></a></li>
<li><a href="http://plus.google.com/"><i class="fa fa-google-plus"></i> </a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
</footer>

<style>
ul {
	overflow: auto;
}

ul li {
	list-style-type: none;
	float: left;
}

ul li a i {
	background: #205D7A;
	color: #fff;
	width: 40px;
	height: 40px;
	border-radius: 20px;
	font-size: 25px;
	text-align: center;
	margin-right: 10px;
	padding-top: 15%;
}
.fa-facebook {
	background:#3b5998
} 
.fa-linkedin {
	background:#007bb6
}
.fa-twitter {
	background:#00aced
}
.google-plus {
	background:#dd4b39
}
ul li a i {
	transition: all 0.2s ease-in-out;
}
ul li a i:hover {
	opacity: .7;
}


.wrapper {
min-height: 100%;
height: auto !important;
height: 100%;
margin: 0 auto -4em;
}

.footer {
display:block ;
background-color: black;
text-align: center;
height: 10em;
clear:both;
}
</style>
	
							</body>
	</html>
 </script>