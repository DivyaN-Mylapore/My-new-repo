
<!DOCTYPE html>
<!--[if IE 8]><html id="root" class="ie8 " lang="en-US"><![endif]-->
<!--[if IE 9]><html id="root" class="ie9 " lang="en-US"><![endif]-->
<!--[if gt IE 9]><!-->
<html id="root" class="" lang="en-US">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback"
	href="http://tokokoodemo.us/papirus/books/xmlrpc.php" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!--[if lte IE 7]><script src="http://tokokoodemo.us/papirus/books/wp-content/plugins/CTF_kodda_menu/standard/css/font-icons/lte-ie7.js"></script><![endif]-->
<script type="text/javascript">
	document.documentElement.className = document.documentElement.className
			+ ' yes-js js_active js'
</script>
<title>MAGGIE STIEFVATER &#8211; Book Store</title>
<style>
.wishlist_table .add_to_cart, a.add_to_wishlist.button.alt {
	border-radius: 16px;
	-moz-border-radius: 16px;
	-webkit-border-radius: 16px;
}
</style>
<script type="text/javascript">
	var yith_wcwl_plugin_ajax_web_url = 'http://tokokoodemo.us/papirus/books/wp-admin/admin-ajax.php';
</script>
<meta name="generator" content="Papirus 1.1.7" />
<link rel="alternate" type="application/rss+xml"
	title="Book Store &raquo; Feed"
	href="http://tokokoodemo.us/papirus/books/feed/" />
<link rel="alternate" type="application/rss+xml"
	title="Book Store &raquo; Comments Feed"
	href="http://tokokoodemo.us/papirus/books/comments/feed/" />
<script type="text/javascript">
	window._wpemojiSettings = {
		"baseUrl" : "https:\/\/s.w.org\/images\/core\/emoji\/72x72\/",
		"ext" : ".png",
		"source" : {
			"wpemoji" : "http:\/\/tokokoodemo.us\/papirus\/books\/wp-includes\/js\/wp-emoji.js?ver=4.4.4",
			"twemoji" : "http:\/\/tokokoodemo.us\/papirus\/books\/wp-includes\/js\/twemoji.js?ver=4.4.4"
		}
	};
	(function(window, document, settings) {
		var src, ready;

		/**
		 * Detect if the browser supports rendering emoji or flag emoji. Flag emoji are a single glyph
		 * made of two characters, so some browsers (notably, Firefox OS X) don't support them.
		 *
		 * @since 4.2.0
		 *
		 * @param type {String} Whether to test for support of "simple" or "flag" emoji.
		 * @return {Boolean} True if the browser can render emoji, false if it cannot.
		 */
		function browserSupportsEmoji(type) {
			var canvas = document.createElement('canvas'), context = canvas.getContext
					&& canvas.getContext('2d'), stringFromCharCode = String.fromCharCode, tonedata, tone, tone2;

			if (!context || !context.fillText) {
				return false;
			}

			/*
			 * Chrome on OS X added native emoji rendering in M41. Unfortunately,
			 * it doesn't work when the font is bolder than 500 weight. So, we
			 * check for bold rendering support to avoid invisible emoji in Chrome.
			 */
			context.textBaseline = 'top';
			context.font = '600 32px Arial';

			if ('flag' === type) {
				/*
				 * This works because the image will be one of three things:
				 * - Two empty squares, if the browser doesn't render emoji
				 * - Two squares with 'A' and 'U' in them, if the browser doesn't render flag emoji
				 * - The Australian flag
				 *
				 * The first two will encode to small images (1-2KB data URLs), the third will encode
				 * to a larger image (4-5KB data URL).
				 */
				context.fillText(
						stringFromCharCode(55356, 56806, 55356, 56826), 0, 0);
				return canvas.toDataURL().length > 3000;
			} else if ('diversity' === type) {
				/*
				 * This tests if the browser supports the Emoji Diversity specification, by rendering an
				 * emoji with no skin tone specified (in this case, Santa). It then adds a skin tone, and
				 * compares if the emoji rendering has changed.
				 */
				context.fillText(stringFromCharCode(55356, 57221), 0, 0);
				tonedata = context.getImageData(16, 16, 1, 1).data;

				context.fillText(
						stringFromCharCode(55356, 57221, 55356, 57343), 0, 0);
				// Chrome has issues comparing arrays, and Safari has issues converting arrays to strings.
				// So, we create our own string and compare that, instead.
				tonedata = context.getImageData(16, 16, 1, 1).data;
				tone2 = tonedata[0] + ',' + tonedata[1] + ',' + tonedata[2]
						+ ',' + tonedata[3];

				return tone !== tone2;
			} else {
				if ('simple' === type) {
					/*
					 * This creates a smiling emoji, and checks to see if there is any image data in the
					 * center pixel. In browsers that don't support emoji, the character will be rendered
					 * as an empty square, so the center pixel will be blank.
					 */
					context.fillText(stringFromCharCode(55357, 56835), 0, 0);
				} else {
					/*
					 * To check for Unicode 8 support, let's try rendering the most important advancement
					 * that the Unicode Consortium have made in years: the burrito.
					 */
					context.fillText(stringFromCharCode(55356, 57135), 0, 0);
				}
				return context.getImageData(16, 16, 1, 1).data[0] !== 0;
			}
		}

		function addScript(src) {
			var script = document.createElement('script');

			script.src = src;
			script.type = 'text/javascript';
			document.getElementsByTagName('head')[0].appendChild(script);
		}

		settings.supports = {
			simple : browserSupportsEmoji('simple'),
			flag : browserSupportsEmoji('flag'),
			unicode8 : browserSupportsEmoji('unicode8'),
			diversity : browserSupportsEmoji('diversity')
		};

		settings.DOMReady = false;
		settings.readyCallback = function() {
			settings.DOMReady = true;
		};

		if (!settings.supports.simple || !settings.supports.flag
				|| !settings.supports.unicode8 || !settings.supports.diversity) {
			ready = function() {
				settings.readyCallback();
			};

			if (document.addEventListener) {
				document.addEventListener('DOMContentLoaded', ready, false);
				window.addEventListener('load', ready, false);
			} else {
				window.attachEvent('onload', ready);
				document.attachEvent('onreadystatechange', function() {
					if ('complete' === document.readyState) {
						settings.readyCallback();
					}
				});
			}

			src = settings.source || {};

			if (src.concatemoji) {
				addScript(src.concatemoji);
			} else if (src.wpemoji && src.twemoji) {
				addScript(src.twemoji);
				addScript(src.wpemoji);
			}
		}

	})(window, document, window._wpemojiSettings);
</script>
<style type="text/css">
img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='dashicons-css'
	href='http://tokokoodemo.us/papirus/books/wp-includes/css/dashicons.css?ver=4.4.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='wp-jquery-ui-dialog-css'
	href='http://tokokoodemo.us/papirus/books/wp-includes/css/jquery-ui-dialog.css?ver=4.4.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='ctf-kodda-frontend-style-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/plugins/CTF_kodda_menu/standard/css/frontend.dev.css?ver=4.4.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='ctf-kodda-frontend-font_icons-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/plugins/CTF_kodda_menu/core/css/codetempIcons/style.css?ver=2.0.0'
	type='text/css' media='screen' />
<link rel='stylesheet' id='ctf-kodda-frontend-responsive-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/plugins/CTF_kodda_menu/standard/css/responsive_mode_3.dev.css?ver=4.4.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='kodda_user_style-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/uploads/sites/2/kodda_user_style.css?ver=4.4.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='rs-plugin-settings-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/plugins/revslider/public/assets/css/settings.css?ver=5.1.6'
	type='text/css' media='all' />
<style id='rs-plugin-settings-inline-css' type='text/css'>
@import
	url(http://fonts.googleapis.com/css?family=Open+Sans:400,800,300,700);

@import
	url(http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic)
	;

@import
	url(http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900)
	;

.tp-caption.roundedimage img {
	-webkit-border-radius: 300px;
	-moz-border-radius: 300px;
	border-radius: 300px
}

.tp-caption.papi-medium-big {
	font-size: 100px !important;
	font-weight: 300 !important;
	font-family: "Raleway" !important;
	text-transform: uppercase !important;
	color: #3c3c3c !important
}

.tp-caption.papi-hard-big {
	font-size: 100px !important;
	font-weight: 800 !important;
	font-family: "Raleway" !important;
	text-transform: uppercase !important;
	color: #3c3c3c !important
}

.tp-caption.papi-light-big {
	font-size: 100px !important;
	font-weight: 100 !important;
	font-family: "Raleway" !important;
	text-transform: uppercase !important;
	color: #3c3c3c !important
}

.tp-caption.papi-p {
	font-size: 16px !important;
	line-height: 20px !important;
	font-family: "Merriweather" !important;
	color: #3c3c3c !important
}

@media screen and (max-width:768px) {
	.tp-caption.papi-medium-big, .tp-caption.papi-hard-big, .tp-caption.papi-light-big
		{
		font-size: 40px !important
	}
	.tp-caption.papi-p {
		font-size: 10px !important
	}
}

@media screen and (max-width:480px) {
	.tp-caption.papi-medium-big, .tp-caption.papi-hard-big, .tp-caption.papi-light-big
		{
		font-size: 28px !important
	}
	.tp-caption.papi-p {
		display: none
	}
}
</style>
<link rel='stylesheet' id='woocommerce_prettyPhoto_css-css'
	href='//tokokoodemo.us/papirus/books/wp-content/plugins/woocommerce/assets/css/prettyPhoto.css?ver=3.1.6'
	type='text/css' media='all' />
<link rel='stylesheet' id='jquery-selectBox-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/plugins/yith-woocommerce-wishlist/assets/css/jquery.selectBox.css?ver=1.2.0'
	type='text/css' media='all' />
<link rel='stylesheet' id='yith-wcwl-main-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/plugins/yith-woocommerce-wishlist/assets/css/style.css?ver=2.0.13'
	type='text/css' media='all' />
<link rel='stylesheet' id='yith-wcwl-font-awesome-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/plugins/yith-woocommerce-wishlist/assets/css/font-awesome.min.css?ver=4.3.0'
	type='text/css' media='all' />
<link rel='stylesheet' id='icomoon-icon-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/themes/papirus/inc/mega-menus/fonts/icomoon/style.css?ver=4.4.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='fontello-icon-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/themes/papirus/inc/mega-menus/fonts/fontello-7275ca86/css/fontello.css?ver=4.4.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='tokokoo-gallery-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/themes/papirus/css/gallery.css?ver=1.1.7'
	type='text/css' media='all' />
<link rel='stylesheet' id='tokokoo-custom-widgets-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/themes/papirus/css/widgets.css?ver=1.1.7'
	type='text/css' media='all' />
<link rel='stylesheet' id='tokokoo-fonts-css'
	href='http://fonts.googleapis.com/css?family=Raleway%3A400%2C700%2C500%7CMerriweather%3A400%2C400italic%2C700%2C700italic&#038;ver=1.1.7'
	type='text/css' media='all' />
<link rel='stylesheet' id='fonts-awesome-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/themes/papirus/css/font-awesome.min.css?ver=1.1.7'
	type='text/css' media='all' />
<link rel='stylesheet' id='animate-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/themes/papirus/css/animate.css?ver=1.1.7'
	type='text/css' media='all' />
<link rel='stylesheet' id='screen-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/themes/papirus/css/screen.css?ver=1.1.7'
	type='text/css' media='all' />
<link rel='stylesheet' id='wcxp-quick-view-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/plugins/woocommerce-quick-view-by-xtensionpress/assets/css/style.css?ver=4.4.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='jquery-custombox-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/plugins/woocommerce-quick-view-by-xtensionpress/assets/css/jquery.custombox.css?ver=4.4.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='mc4wp-form-basic-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/plugins/mailchimp-for-wp/assets/css/form-basic.css?ver=3.1.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='tokokoo-style-css'
	href='http://tokokoodemo.us/papirus/books/wp-content/themes/papirus/style.css?ver=1.1.7'
	type='text/css' media='all' />
<script type="text/template" id="tmpl-variation-template">
    <div class="woocommerce-variation-description">
        {{{ data.variation.variation_description }}}
    </div>

    <div class="woocommerce-variation-price">
        {{{ data.variation.price_html }}}
    </div>

    <div class="woocommerce-variation-availability">
        {{{ data.variation.availability_html }}}
    </div>
</script>
<script type="text/template" id="tmpl-unavailable-variation-template">
    <p>Sorry, this product is unavailable. Please choose a different combination.</p>
</script>
<script type='text/javascript'
	src='http://tokokoodemo.us/papirus/books/wp-includes/js/jquery/jquery.js?ver=1.11.3'></script>
<script type='text/javascript'
	src='http://tokokoodemo.us/papirus/books/wp-includes/js/jquery/jquery-migrate.js?ver=1.2.1'></script>
<script type='text/javascript'
	src='http://tokokoodemo.us/papirus/books/wp-content/uploads/sites/2/kodda_user_settings.js?ver=4.4.4'></script>
<script type='text/javascript'>
	/* <![CDATA[ */
	var wc_add_to_cart_params = {
		"ajax_url" : "\/papirus\/books\/wp-admin\/admin-ajax.php",
		"wc_ajax_url" : "\/papirus\/books\/authors\/nicholas-c-zakas\/?wc-ajax=%%endpoint%%",
		"i18n_view_cart" : "View Cart",
		"cart_url" : "http:\/\/tokokoodemo.us\/papirus\/books\/cart\/",
		"is_cart" : "",
		"cart_redirect_after_add" : "no"
	};
	/* ]]> */
</script>
<script type='text/javascript'
	src='//tokokoodemo.us/papirus/books/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.js?ver=2.5.5'></script>
<script type='text/javascript'
	src='http://tokokoodemo.us/papirus/books/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.tools.min.js?ver=5.1.6'></script>
<script type='text/javascript'
	src='http://tokokoodemo.us/papirus/books/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js?ver=5.1.6'></script>
<script type='text/javascript'
	src='http://tokokoodemo.us/papirus/books/wp-content/plugins/js_composer/assets/js/vendors/woocommerce-add-to-cart.js?ver=4.9.2'></script>
<script type='text/javascript'
	src='http://tokokoodemo.us/papirus/books/wp-includes/js/hoverIntent.js?ver=1.8.1'></script>
<script type='text/javascript'
	src='http://tokokoodemo.us/papirus/books/wp-content/plugins/CTF_kodda_menu/standard/js/frontend.min.js?ver=2.0.0'></script>
<link rel='https://api.w.org/'
	href='http://tokokoodemo.us/papirus/books/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD"
	href="http://tokokoodemo.us/papirus/books/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml"
	href="http://tokokoodemo.us/papirus/books/wp-includes/wlwmanifest.xml" />
<meta name="generator" content="WordPress 4.4.4" />
<meta name="generator" content="WooCommerce 2.5.5" />

<style type="text/css"></style>
<!--[if lt IE 9]>
<script src="http://tokokoodemo.us/papirus/books/wp-content/themes/papirus/js/html5.js"></script>
<![endif]-->
<!-- Custom Styling -->
<style type="text/css">
@media screen and (max-width:991px) {
	.col2-set label, .col2-set input[type=\"text\"] {
		display: block !important;
	}
	.col2-set#customer_login .form-row-action, .col2-set#customer_login .lost_password
		{
		padding-left: 0;
		text-align: center;
	}
	.col2-set#customer_login label {
		width: auto
	}
}

@media screen and (max-width:768px) {
	.col2-set .col-1, .col2-set .col-2 {
		width: 100%;
	}
}
</style>
<meta name="generator"
	content="Powered by Visual Composer - drag and drop page builder for WordPress." />
<!--[if lte IE 9]><link rel="stylesheet" type="text/css" href="http://tokokoodemo.us/papirus/books/wp-content/plugins/js_composer/assets/css/vc_lte_ie9.min.css" media="screen"><![endif]-->
<!--[if IE  8]><link rel="stylesheet" type="text/css" href="http://tokokoodemo.us/papirus/books/wp-content/plugins/js_composer/assets/css/vc-ie8.min.css" media="screen"><![endif]-->
<meta name="generator"
	content="Powered by Slider Revolution 5.1.6 - responsive, Mobile-Friendly Slider Plugin for WordPress with comfortable drag and drop interface." />

<style type="text/css"></style>

<style type="text/css">
.hero.page_title .container {
	background:
		url('http://tokokoodemo.us/papirus/books/wp-content/themes/papirus/img/book_tilt.png')
		105% 120px no-repeat;
}
</style>

<noscript>
	<style type="text/css">
.wpb_animate_when_almost_visible {
	opacity: 1;
}
</style>
</noscript>
</head>

<body class="archive tax-authors term-nicholas-c-zakas term-161 woocommerce woocommerce-page layout-right-sidebar wpb-js-composer js-comp-ver-4.9.2 vc_responsive">
WELCOME${userId}
	<div class="sidemenu_overlay"></div>
	<div class="side_menu cart-menu off-pushright">

		<div class="widget woocommerce widget_shopping_cart">
			<div class="widget_shopping_cart_content"></div>
		</div>
		<div class="widget WooCommerceMyAccountWidget">
			<div class=logout>
				<h2 class="widgettitle">Customer Login</h2>
				<form:form action="userLogin" method="post" commandName="home">

					<p class="login-username">
						<label for="user_login">Username</label>
						<form:input path="userName" type="text" cssClass="input" value="" size="20" />
						<br />
						<form:errors path="userName" cssStyle="color:red"></form:errors>
						</td>
						</td>
					</p>
					<p class="login-password">
						<label for="user_pass">Password</label>
						<form:input path="password" type="password" cssClass="input" value="" size="20" />
						</td>
					</p>

					<p class="login-submit">
						<input type="submit" name="wp-submit" id="wp-submit"
							class="button-primary" value="Login" /> <input type="reset"
							name="" value="Reset"> <input type="hidden"
							name="redirect_to" value="" />
					</p>

				</form:form>
				<a class="lost-pass" href="#">Lost password?</a>
				<p>
					<a class="link cart-link" href="#"
						title="View your shopping cart">View your shopping cart</a>
				</p>
				<p>
					<a class=" register-link" href="register"
						title="Registration of new user">New User?</a>
				</p>
			</div>
		</div>
	</div>

	<div class="site_content">
		<!-- Close in footer.php -->

		<!-- Begin #masthead.site-header-->
		<header id="masthead" role="banner" class="page_header ">
			<div class="top_header">
				<div class="container">
					<div class="left-side pull-left">
						<p>Contact us on 9442920184 or support@booksie.com</p>
					</div>
				</div>
			</div>

			<div class="bottom_header">
				<div class="container">

					<a class="mobile_nav_trigger pull-left"><i class="fa fa-bars"></i></a>

					<div class="logo">
						<div class="branding">
							<div id="site-title">
								<a href="home" title="Book Store"
									rel="home"><span>Book Store</span></a>
							</div>
							<div id="site-description">
								<span> booksie store</span>
							</div>
						</div>
					</div>


					<nav class="primary_menu pull-left">
						<ul id="menu-primary-menu" class="menu">
							<li id="menu-item-2557"
								class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-1358 current_page_item"><a
								href="home">Home</a></li>
							</ul>
							</nav>
							</div>
							
					

		</header>

		<div class="hero">
			<div class="slider"></div>
		</div>

		<div class="hero page_title">
			<div class="container">

				<div class="loop-meta">


					<h2 class="page_title col-md-offset-1">MAGGIE STIEFVATER</h2>


				</div>
				<!-- .loop-meta -->
				<nav
					class="tokokoo-breadcrumb breadcrumb-trail breadcrumbs col-md-offset-1">
					<a class="logout" href="">Home</a>
					&#47; <span class="trail-end">Product</span>
				</nav>
			</div>
		</div>






		<div id="content">


			<div class="container">
				<div class="row">
					<!-- begin featured book section -->
					<section class="col-md-9">
						<!-- begin featured book section -->


						<div class="featured_book">
							<h2 class="section_title">Featured Book</h2>




							<div
								class="post-2035 product type-product status-publish has-post-thumbnail authors-ellen-lupton publisher-princeton-architectural-press product_cat-html5 product_cat-web-application product_tag-design product_tag-designer product_tag-newbie product_tag-responsive product_tag-tutorial product_tag-web product_tag-web-design-2 sale featured shipping-taxable purchasable product-type-simple product-cat-html5 product-cat-web-application product-tag-design product-tag-designer product-tag-newbie product-tag-responsive product-tag-tutorial product-tag-web product-tag-web-design-2 instock">

								<span class="onsale">Sale!</span>

								<figure class="col-md-5 featured-image-holder">
									<a
										href="#"
										title="The raven king by Maggie Stiefvater""><img
										src="images/The_Raven_King_Cover_Official.jpeg"
										alt="Thinking with Type, 2nd revised and expanded edition: A Critical Guide for Designers, Writers, Editors, &amp; Students"
										class="tokokoo-featured-product" /></a>
									<a
										href="http://tokokoodemo.us/papirus/books/?wc-api=wcxp_quick_view&product=2035&ajax=true"
										title="The raven king by Maggie Stiefvater"
										class="button wcxp-quick-view-button"><span></span>Quick
										View</a>
								</figure>

								<div class="product_desc col-md-5">
									<p class="author">
										By <a
											href="#">MAGGIE STIEFVATER
											</a>
									</p>
									<h3 class="item-title">
										<a
											href="#"
											title="Thinking with Type, 2nd revised and expanded edition: A Critical Guide for Designers, Writers, Editors, &#038; Students">A stunning tour de force filled with transcendent awe and wonder, Hyperion is a masterwork of science fiction that resonates with excitement and invention, the first volume in a remarkable new science fiction epic by the multiple-award-winning author of The Hollow Man</a>
									</h3>
									The fourth and final instalment in the spellbinding series from bestselling author Maggie Stiefvater. All her life, Blue has been warned that she will cause her true love's death. She doesn't believe in true love and never thought this would be a problem, but as her life becomes caught up in the strange and sinister world of the Raven Boys, she's not so sure any more.&hellip;
								</div>

								<div class="product_details col-md-2">


									<span class="price"><del>
											<span class="amount">${currProduct.name}</span>
										</del> <ins>
											<span class="amount">Rs:900.00</span>
										</ins></span><a rel="nofollow"
										href="cart?productId=${currProduct.id}&currentUserSessionId=${userId}"
										data-quantity="1" data-product_id="2035"
										data-product_sku="124BG87"
										class="button add_to_cart">Add
										to cart</a> 


		<!-- Begin .bottom_footer -->
		<div class="bottom_footer">
			<div class="container row">
				<div class="copy col-md-6">
					<div class="footer-text">Copyright - Booksie 2016</div>


					<div class="social_links">

						<a href="http://facebook.com/"><i
							class="fa fa-facebook"></i></a> <a href="http://twitter.com/booksie"><i
							class="fa fa-twitter"></i></a> <a href="http://booksie"><i
							class="fa fa-rss"></i></a> <a href="http://www.youtube.com/booksie"><i
							class="fa fa-youtube-play"></i></a> <a
							href="mailto:support@booksie.com"><i class="fa fa-envelope"></i></a>
						<a href="http://plus.google.com/"><i
							class="fa fa-google-plus"></i></a> <a
							href="http://www.flickr.com/"><i class="fa fa-flickr"></i></a>

					</div>

				</div>
			
			</div>
		</div>
	

	</div>
	<!-- End #page .site -->
	<link rel='stylesheet' id='codetemp-frontend-google-fonts-css'
		href='http://fonts.googleapis.com/css?family=Raleway%7CMerriweather%7C&#038;ver=4.4.4'
		type='text/css' media='all' />
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-includes/js/jquery/ui/widget.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-includes/js/jquery/ui/mouse.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-includes/js/jquery/ui/resizable.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-includes/js/jquery/ui/draggable.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-includes/js/jquery/ui/button.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-includes/js/jquery/ui/position.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-includes/js/jquery/ui/dialog.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-includes/js/wpdialog.js?ver=4.4.4'></script>
	<script type='text/javascript'
		src='//tokokoodemo.us/papirus/books/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.js?ver=2.70'></script>
	<script type='text/javascript'>
		/* <![CDATA[ */
		var woocommerce_params = {
			"ajax_url" : "\/papirus\/books\/wp-admin\/admin-ajax.php",
			"wc_ajax_url" : "\/papirus\/books\/authors\/nicholas-c-zakas\/?wc-ajax=%%endpoint%%"
		};
		/* ]]> */
	</script>
	<script type='text/javascript'
		src='//tokokoodemo.us/papirus/books/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.js?ver=2.5.5'></script>
	<script type='text/javascript'
		src='//tokokoodemo.us/papirus/books/wp-content/plugins/woocommerce/assets/js/jquery-cookie/jquery.cookie.js?ver=1.4.1'></script>
	<script type='text/javascript'>
		/* <![CDATA[ */
		var wc_cart_fragments_params = {
			"ajax_url" : "\/papirus\/books\/wp-admin\/admin-ajax.php",
			"wc_ajax_url" : "\/papirus\/books\/authors\/nicholas-c-zakas\/?wc-ajax=%%endpoint%%",
			"fragment_name" : "wc_fragments"
		};
		/* ]]> */
	</script>
	<script type='text/javascript'
		src='//tokokoodemo.us/papirus/books/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.js?ver=2.5.5'></script>
	<script type='text/javascript'
		src='//tokokoodemo.us/papirus/books/wp-content/plugins/woocommerce/assets/js/prettyPhoto/jquery.prettyPhoto.js?ver=3.1.5'></script>
	<script type='text/javascript'
		src='//tokokoodemo.us/papirus/books/wp-content/plugins/woocommerce/assets/js/prettyPhoto/jquery.prettyPhoto.init.js?ver=2.5.5'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-content/plugins/yith-woocommerce-wishlist/assets/js/jquery.selectBox.min.js?ver=1.2.0'></script>
	<script type='text/javascript'>
		/* <![CDATA[ */
		var yith_wcwl_l10n = {
			"ajax_url" : "http:\/\/tokokoodemo.us\/papirus\/books\/wp-admin\/admin-ajax.php",
			"redirect_to_cart" : "no",
			"multi_wishlist" : "",
			"hide_add_button" : "1",
			"is_user_logged_in" : "",
			"ajax_loader_url" : "http:\/\/tokokoodemo.us\/papirus\/books\/wp-content\/plugins\/yith-woocommerce-wishlist\/assets\/images\/ajax-loader.gif",
			"remove_from_wishlist_after_add_to_cart" : "yes",
			"labels" : {
				"cookie_disabled" : "We are sorry, but this feature is available only if cookies are enabled on your browser.",
				"added_to_cart_message" : "<div class=\"woocommerce-message\">Product correctly added to cart<\/div>"
			},
			"actions" : {
				"add_to_wishlist_action" : "add_to_wishlist",
				"remove_from_wishlist_action" : "remove_from_wishlist",
				"move_to_another_wishlist_action" : "move_to_another_wishlsit",
				"reload_wishlist_and_adding_elem_action" : "reload_wishlist_and_adding_elem"
			}
		};
		/* ]]> */
	</script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-content/plugins/yith-woocommerce-wishlist/assets/js/jquery.yith-wcwl.js?ver=2.0.13'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-content/themes/papirus/js/widgets.js?ver=1.1.7'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-content/themes/papirus/js/plugins.js?ver=1.1.7'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-content/plugins/js_composer/assets/lib/waypoints/waypoints.min.js?ver=4.9.2'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-content/themes/papirus/js/methods.js?ver=1.1.7'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-includes/js/underscore.min.js?ver=1.6.0'></script>
	<script type='text/javascript'>
		/* <![CDATA[ */
		var _wpUtilSettings = {
			"ajax" : {
				"url" : "\/papirus\/books\/wp-admin\/admin-ajax.php"
			}
		};
		/* ]]> */
	</script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-includes/js/wp-util.js?ver=4.4.4'></script>
	<script type='text/javascript'>
		/* <![CDATA[ */
		var wc_add_to_cart_variation_params = {
			"i18n_no_matching_variations_text" : "Sorry, no products matched your selection. Please choose a different combination.",
			"i18n_make_a_selection_text" : "Select product options before adding this product to your cart.",
			"i18n_unavailable_text" : "Sorry, this product is unavailable. Please choose a different combination."
		};
		/* ]]> */
	</script>
	<script type='text/javascript'
		src='//tokokoodemo.us/papirus/books/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart-variation.js?ver=2.5.5'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-content/plugins/woocommerce-quick-view-by-xtensionpress/assets/js/jquery.custombox.js?ver=1.0.2'></script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-includes/js/wp-embed.js?ver=4.4.4'></script>
	<script type='text/javascript'>
		/* <![CDATA[ */
		var mc4wp_forms_config = [];
		/* ]]> */
	</script>
	<script type='text/javascript'
		src='http://tokokoodemo.us/papirus/books/wp-content/plugins/mailchimp-for-wp/assets/js/forms-api.js?ver=3.1.4'></script>
	<!-- WooCommerce JavaScript -->
	<script type="text/javascript">
		jQuery(function($) {

			$(document)
					.on(
							'click',
							'.product .wcxp-quick-view-button',
							function(e) {
								$.fn
										.custombox(
												this,
												{
													effect : 'fadein',
													speed : 600,
													overlay : true,
													complete : function() {
														jQuery(
																'form.variations_form')
																.wc_variation_form();
														jQuery(
																'form.variations_form')
																.trigger(
																		'wc_variation_form');
														jQuery(
																'form.variations_form .variations select')
																.change();
														jQuery(
																'div.quantity:not(.buttons_added), td.quantity:not(.buttons_added)')
																.addClass(
																		'buttons_added')
																.append(
																		"<input type='button' value='+' class='plus' />")
																.prepend(
																		"<input type='button' value='-' class='minus' />");
													}
												});

								e.preventDefault();
							});

		});
	</script>
	<script type="text/javascript">
		(function() {
			function addEventListener(element, event, handler) {
				if (element.addEventListener) {
					element.addEventListener(event, handler, false);
				} else if (element.attachEvent) {
					element.attachEvent('on' + event, handler);
				}
			}
		})();
	</script>
</body>
</html>