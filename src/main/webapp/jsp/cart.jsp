<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart page</title>
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
</head>
<body>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Cart</h1>
                    <p>All the selected products in your shopping cart</p>
                </div>
            </div>
        </section>
<%--         <c:url var="addAction" value="/cart/add"></c:url>
 --%>        
        <div id="display cart">
<%--         <c:if test="${displayCart==true}">
 --%>        <table><tr>
        <th align="left" width="80">cart id</th>
        <th align="left" width="80">product name</th>
        <th align="left" width="80">quantity</th>
        <th align="left" width="80">price</th>
        <th align="left" width="80">status</th>
        <th colspan="2" align="center" width="60">Action</th>
        </tr>
        <c:forEach items="${cartList}" var="cartList">
        <tr>
        <td align="left">${cartList.id}</td>
<td align="left">${cartList.productId}</td>
<td align="left">${cartList.quantity}</td>
<td align="left">${cartList.price}</td>
<td align="left">${cartList.status}</td>
<td align="left">${cartList.sessionUserId}</td>
<td align="left"><a href="<C:url values='/mycart/delete/${cart.id}'/>">Delete</a></td>
</tr>
       
        
        
        
        </c:forEach>
        
        
        
        </table>
        <%-- </c:if> --%>
        </div>
        </div>
        </div>
<!--         
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
</footer> -->

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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="js/jquery.mixitup.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/smooth-scroll.js"></script>
<script src="js/custom.js"></script>
	
        </body>
        </html>
        