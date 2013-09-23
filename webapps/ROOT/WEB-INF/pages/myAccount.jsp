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
                  <h1 style="font-size: x-large; color: #28a2cb">Bizgrass Managemet Console</h1>
            </div>
            <div class="col-md-offset-6 col-md-2">
                  <div class="btn-group">
			        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">${username} <span class="caret"></span></button>
			        <ul class="dropdown-menu" role="menu">
			          <li><a href="">My Account</a></li>
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
		  <li><a href="login.biz?username=${username}">My Applications</a></li>
		  <li><a href="#">Help</a></li>
		  <li class="active"><a href="#">My Account</a></li>
		  <li><a href="mymessage.biz?username=${username}">Messages</a></li>
		</ul>
		<br>
		<br>
		<br>
		<div class="container">
	      	<div class=".row">
	      		<div class="col-md-6 col-md-offset-3">
	      			<div class="row">
	      				<div class="list-group">
						  <h3 class="list-group-item active">
						   	Account Details
						  </h3>
						</div>
						<div class="input-group">
						  <span class="input-group-addon" style="width: 200px;">User Name</span>
						  <input type="text" class="form-control" placeholder="${username}" readonly="readonly" style="width: 350px; text-align: center;">
						</div>
						<div class="input-group">
						  <span class="input-group-addon" style="width: 200px;">Plan Details</span>
						  <input type="text" class="form-control" placeholder="${plan}" readonly="readonly"style="width: 350px; text-align: center;">
						</div>
						<div class="input-group">
						  <span class="input-group-addon" style="width: 200px;">First Name</span>
						  <input type="text" class="form-control" placeholder="${firstname}" readonly="readonly"style="width: 350px; text-align: center;">
						</div>
						<div class="input-group">
						  <span class="input-group-addon" style="width: 200px;">Last Name</span>
						  <input type="text" class="form-control" placeholder="${lastname}" readonly="readonly"style="width: 350px; text-align: center;">
						</div>
						<div class="input-group">
						  <span class="input-group-addon" style="width: 200px;">Email Address</span>
						  <input type="text" class="form-control" placeholder="${email}" readonly="readonly"style="width: 350px; text-align: center;">
						</div>
	      			</div>
	      			<br>
	      			<div class="row">
	      				<div class="btn-group btn-group-justified">
					        <a href="updatemyAccount.biz?username=${username}" class="btn btn-primary">Update Details</a>
					        <a href="changePassword.biz?username=${username}" class="btn btn-info">Change Password</a>
					        <a href="#" class="btn btn-danger">Buy Licence</a>
					     </div>
					     
	      			</div>
	      		</div>
	      	</div>
	    </div>
		
     </div>

</body>
</html>