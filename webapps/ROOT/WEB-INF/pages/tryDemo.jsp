<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html  lang="en">
<head>

	<!-- start: Meta -->
	
	<title>Pricing to suit every business</title> 
	<meta name="description" content="Bizgrass has a strong management team consisteing of Abhishek Bansal as Founder-CEO, Sumit Dubey as Founder-CIO, Shivangi Jain Mehra as Chief Designer and Sambhav Jain as CTO."/>
	<meta name="keywords" content="Online Store, e-Store, Create online Store, Reporting, ecommerce Analytics, deliver product" />
	<meta name="author" content="Abhishek from Bizgrass"/>
	<!-- end: Meta -->
	<META HTTP-EQUIV="EXPIRES" CONTENT="Mon, 28 Dec 2020 11:12:01 GMT">	
	<!--Google Site Verification -->
	<meta name="google-site-verification" content="ZnRJ3kpuc_qGUyxUp3qLZEAEm5QKMIiSb1b8Dl0zhZQ" />
	
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- Fevicon Start -->
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
	<!-- Fevicon End -->
	
	<!-- start: Facebook Open Graph -->
	<meta property="og:title" content=""/>
	<meta property="og:description" content=""/>
	<meta property="og:type" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:image" content=""/>
	<!-- end: Facebook Open Graph -->

    <!-- start: CSS -->
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Serif">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Boogaloo">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Economica:700,400italic">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lato:300,400,700,900">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css">
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<link href="css/layerslider.css" rel="stylesheet" type="text/css">
	
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css" />
	
	<script>
  $(function() {
    $( "#slider12" ).slider({
      value:0,
      min: 1000,
      max: 20000,
      step: 1000,
      slide: function( event, ui ) {
        $( "#amount" ).val( "" + ui.value );
      }
    });
    
  });
  </script>
  
  	<script>
  $(function() {
    $( "#slider123" ).slider({
      value:0,
      min: 10,
      max: 200,
      step: 5,
      slide: function( event, ui ) {
        $( "#amount123" ).val( "" + ui.value );
      }
    });
    
  });
  </script>
  
	
	<!--[if lt IE 9 ]>
	  <link href="css/styleIE.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9 ]>
	  <link href="css/styleIE9.css" rel="stylesheet">
	<![endif]-->
	
	<!-- end: CSS -->

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-39767448-1', 'bizgrass.com');
  ga('send', 'pageview');

</script>

<body>

	<!--start: Header -->
	<header>

		<!--start: Container -->
		<div class="container">

			<!--start: Navigation -->
			<div class="navbar navbar-inverse">
				<div class="navbar-inner">
					<a class="btn btn-navbar" data-toggle="collapse"
						data-target=".nav-collapse"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a> <a class="brand" href="welcome.html"><img
						src="img/logo@2x.png" alt="Logo Bizgrass">bizgrass</a>
					<div class="nav-collapse collapse">
						<ul class="nav">
							<li><a href="welcome.html">Home<span>start here</span></a></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Solution Lines<b class="caret"></b><span>we
										offer</span></a>
								<ul class="dropdown-menu">
									<li><a href="build-e-store.html">Create Online Store</a></li>
									<li><a href="CRM_Sales.html">Customer Relationship
											Management (CRM)</a></li>
									<li><a href="dashboard.html">Real Time Insight
											Dashboard</a></li>
									<li><a href="business_reporting.html">Business
											Reporting</a></li>
									<li><a href="business_Inteligence.html">Predictive
											Business Intelligence</a></li>
									<li><a href="application_operations.html">Application
											& Operations Management</a></li>
								</ul></li>
							<!--<li ><a href="portfolio.html">Portfolio<span>our works</span></a></li>	-->
							<li><a href="pricing.html">Pricing<span>price
										&amp; plans</span></a></li>
							<li class="active"><a href="tryLogin.biz">Try Demo<span>Live
										Demo</span></a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Company<b class="caret"></b><span>Overview</span></a>
								<ul class="dropdown-menu">
									<li><a href="company.html">What We Do</a></li>
									<li><a href="about.html">Team</a></li>
									<li><a href="careers.html">Careers</a></li>
								</ul></li>
							<li><a href="contact-us.html">Contact Us<span>stay
										in touch</span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--end: Navigation -->

		</div>
		<!--end: Container-->

	</header>
	<!--end: Header-->
	<!-- start: Page Title -->
	<div id="page-title">

		<h2 style="text-align: center;">Try our free 14 days trial</h2>

		<div class="span11 offset1 ">

			<br></br>
		</div>
	

		<!--start: Row-->
		<div class="row-fluid">

			<div class="lr-page span4 offset1">

				<!--start: Register Box-->
				<div id="register-box">

					<!-- start: Login Row -->
					<div class="row-fluid">

						<div id="login-form" class="span12">

							<div class="page-title-small">

								<h3>Login to Your Account</h3>

							</div>

					<form class="form1" action="<c:url value='j_spring_security_check' />" method="post">

								<div class="row-fluid">

									<input class="span12" id="user" name="j_username" type="text" value="" placeholder="username" /> 
									<input class="span12" id="pass" name="j_password" type="password" value="" placeholder="password" />
									<label for="_spring_security_remember_me">
									<input id="_spring_security_remember_me" name="_spring_security_remember_me" type="checkbox" value="true"/>	
									Remember Me ?
									</label>
								</div>
								<div class="actions">

									<button type="submit" class="btn btn-success span12">Login
										to my Account!</button>

								</div>

							</form>

						</div>


					</div>
					<!-- end: Login Row -->

				</div>
				<!--end: Register Box-->

			</div>








			<div class="lr-page span4 offset1">

				<!--start: Register Box-->
				<div id="register-box">

					<!-- start: Row -->
					<div class="row-fluid">

						<div id="login-form" class="span12">

							<div class="page-title-small">

								<h3>Register a new Account with Us</h3>

							</div>

							<a href="" class="facebook_connect">
								<div class="img">
									<i class="icon-facebook"></i>
								</div>
								<div class="text">Register with Facebook</div>
							</a> 
							<a href="" class="twitter_connect">
								<div class="img">
									<i class="icon-twitter"></i>
								</div>
								<div class="text">Register with Twitter</div>
							</a>
							<a href="google.biz" class="google_connect">
								<div class="img">
									<i class="icon-google-plus"></i>
								</div>
								<div class="text">Register with Google</div>
							</a>

							<div class="page-title-small">

								<h3>or</h3>

							</div>

							<form class="form2" action="register.biz" method="post">

								<div class="row-fluid">

									<input class="span12" id="user" name="username" type="text"
										value="" placeholder="Username" /> 
									<input class="span12" id="user" name="firstname" type="text"
										value="" placeholder="First Name" />
									<input class="span12" id="user" name="lastname" type="text"
										value="" placeholder="Last Name" />
									<input class="span12" id="user" name="email" type="text"
										value="" placeholder="E-mail Address" /> 
									<input class="span12"
										id="pass" name="password" type="password" value="" 
										placeholder="Password" /> 
									
									<!--  <input class="span12" id="confpass"
										name="confpass" type="password" value=""
										placeholder="confirm password" />  -->
									<br></br>
									<div class="span12">
										<div class="span12"><h3>Select Module</h3></div>
										<br></br>
										<div class="span7 offset2">

											<select name="plan" class="span12">
												<optgroup label="Available Modules">
													<option>Dashboard</option>
													<option>CRM</option>
													<option>Analytics</option>
												</optgroup>
											</select>

										</div>
									</div>
								</div>
								<br>
								<div class="actions">

									<button type="submit" class="btn btn-success span12">Create
										Account!</button>

								</div>

							</form>

						</div>


					</div>
					<!-- end: Row -->

				</div>
				<!--end: Register Box-->

			</div>


		</div>
		<!--end: Row -->



	</div>
	<!-- end: Page Title -->



	<!--start: Wrapper-->
	<div id="wrapper">

		<!--start: Container -->

		<div class="container">


			<div class="clearfix"></div>
			<hr>

			<div class="clearfix"></div>
			<hr>

		</div>
		<!-- end: Container -->
		<!-- end: Wrapper  -->



		<!-- start: Footer -->
		<div id="footer">

			<!-- start: Container -->
			<div class="container">

				<!-- start: Row -->
				<div class="row-fluid">

					<!-- start: About -->

					<!-- end: About -->

					<!-- start: Latest Tweets -->
					<div class="span3 offset1">
						<h3>bizgrass</h3>


						<p>
							<i class="icon-envelope"></i> Email: <a
								href="mailto:support@bizgrass.com">support@bizgrass.com</a>
						</p>
						<p>
							<i class="icon-globe"></i> Web: <a href="welcome.html">www.bizgrass.com</a>
						</p>



					</div>
					<!-- end: Latest Tweets -->

					<!-- start: Photo Stream -->

					<!-- end: Photo Stream -->

					<!-- start: Follow Us -->
					<div class="span6 offset2">

						<h3>Follow Us</h3>


						<a href="#" class="social-twitter"></a> <a
							href="http://www.facebook.com/bizgrass" target="_blank"
							class="social-facebook"></a> <a href="#" class="social-linkedin"></a>
						<a href="#" class="social-youtube"></a> <a href="#"
							class="social-rss"></a> <a href="#" class="social-googleplus"></a>

					</div>
					<!-- end: Follow Us -->

				</div>
				<!-- end: Row -->
				<br>
				<div class="row-fluid">

					<div class="span6 offset6">
						<iframe
							src="https://www.facebook.com/plugins/like.php?href=http://www.facebook.com/bizgrass"
							scrolling="no" frameborder="0"
							style="border: none; width: 450px; height: 80px"></iframe>
					</div>
				</div>
			</div>
			<!-- end: Container  -->

		</div>
		<!-- end: Footer -->

		<!-- start: Under Footer -->
		<div id="under-footer">

			<!-- start: Container -->
			<div class="container">

				<!-- start: Row -->
				<div class="row-fluid">

					<!-- start: Under Footer Logo -->
					<div class="span2">
						<div id="under-footer-logo">
							<a class="brand" href="#">bizgrass</a>
						</div>
					</div>
					<!-- end: Under Footer Logo -->

					<!-- start: Under Footer Copyright -->
					<div class="span8">

						<div id="under-footer-copyright">
							&copy; 2013, <a href="http://www.bizgrass.com">bizgrass</a>.
							Designed in Bizgrass.
						</div>

					</div>
					<!-- end: Under Footer Copyright -->

					<!-- start: Under Footer Back To Top -->
					<div class="span2">

						<div id="under-footer-back-to-top">
							<a href="#"></a>
						</div>

					</div>
					<!-- end: Under Footer Back To Top -->

				</div>
				<!-- end: Row -->

			</div>
			<!-- end: Container  -->

		</div>
		<!-- end: Under Footer -->

		<!-- start: Java Script -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="js/jquery-1.9.1.min.js"></script>
		<script src="js/jquery.isotope.js"></script>
		<script src="js/jquery.imagesloaded.js"></script>
		<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/flexslider.js"></script>
		<script src="js/carousel.js"></script>
		<script src="js/jquery.cslider.js"></script>
		<script src="js/slider.js"></script>
		<script src="js/jquery.fancybox.js"></script>
		<script src="js/twitter.js"></script>
		<script src="js/jquery.placeholder.min.js"></script>

		<script src="js/jquery-easing-1.3.js"></script>
		<script src="js/layerslider.kreaturamedia.jquery.js"></script>

		<script src="js/excanvas.js"></script>
		<script src="js/jquery.flot.js"></script>
		<script src="js/jquery.flot.pie.min.js"></script>
		<script src="js/jquery.flot.stack.js"></script>
		<script src="js/jquery.flot.resize.min.js"></script>

		<script defer="defer" src="js/modernizr.js"></script>
		<script defer="defer" src="js/retina.js"></script>
		<script defer="defer" src="js/custom.js"></script>
		<!-- end: Java Script -->
</body>
</html>