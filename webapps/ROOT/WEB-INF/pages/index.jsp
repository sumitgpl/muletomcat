<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<title>Interactive Dashboard - Bizgrass</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
<%@ include file ="../../css/custom.css"%>
<%@ include file ="../bootstrap/css/bootstrap.min.css"%>
</style>
<script type="text/javascript"><%@ include file ="../bootstrap/js/jquery.js"%></script>
<script><%@ include file ="../bootstrap/js/bootstrap.min.js"%></script>
</head>

<body style="background: #212121;" >
<div class="navbar navbar-inverse navbar-fixed-top" style="background: black;">
      <div class="container">
      	<div class=".row">
      		<div class="col-md-4">
                  <h1 style="font-size: x-large;color: #28a2cb">Bizgrass Managemet Console</h1>
            </div>
            <div class="col-md-offset-6 col-md-2">
                  <div class="btn-group">
			        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">${email} <span class="caret"></span></button>
			        <ul class="dropdown-menu" role="menu">
			          <li><a href="myaccount.biz?username=${email}">My Account</a></li>
			          <li class="divider"></li>
			          <li><a href="<c:url value="logout.biz" />">Logout</a></li>
			        </ul>
			      </div>
            </div>
		</div>
      </div>
    </div>
    <div class="container" id="biz_mainContent">
      	<br>
      	<ul class="nav nav-tabs nav-justified">
		  <li class="active"><a href="#">My Applications</a></li>
		  <li><a href="#">Help</a></li>
		  <li><a href="myaccount.biz?username=${email}">My Account</a></li>
		  <li><a href="mymessage.biz?username=${email}">Messages</a></li>
		</ul>
		<br>
		<br>
		<br>
		<div class="container">
	      	<div class=".row">
	      		<div class="col-md-6">
	      			<div class="row">
	      					 <a href="loginRegisteredModule.biz?username=${email}&plan=${plan}&firstname=${url}" target="_blank"><button type="button" class="btn btn-primary">Launch my ${plan}</button></a>
	      			</div>
	      			
	      			
	      		</div>
	      		
	      		<div class="col-md-6" style="background:#333; height: 300px;">
	      		
	      			<h4 style="color: #63b417; margin-top: 25px !important;">Bizgrass User Guide</h4>

	      			<div class="col-md-12">
	      				<p><a href="#">Content-1</a></p>
	      				<p><a href="#">Content-2</a></p>
	      				<p><a href="#">Content-3</a></p>
	      			</div>
	      		</div>
	      		
	      		
	      	</div>
	    </div>
		
     </div>

</body>
</html>