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
			          <li><a href="myaccount.biz?username=${username}">My Account</a></li>
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
						<form class="form2" action="updateAccountDetails.biz" method="post">
							<div class="input-group">
							  <span class="input-group-addon" style="width: 200px;">User Name</span>
							  <input type="text" name="username" class="form-control" value="${username}"  style="width: 350px; text-align: center;" readonly="readonly">
							</div>
							<div class="input-group">
							  <span class="input-group-addon" style="width: 200px;">Plan Details</span>
							  <input type="text" class="form-control" value="${plan}" style="width: 350px; text-align: center;"readonly="readonly">
							</div>
							<div class="input-group">
							  <span class="input-group-addon" style="width: 200px;">First Name</span>
							  <input type="text" name="firstname" class="form-control" value="${firstname}" style="width: 350px; text-align: center;">
							</div>
							<div class="input-group">
							  <span class="input-group-addon" style="width: 200px;">Last Name</span>
							  <input type="text" name="lastname"class="form-control" value="${lastname}" style="width: 350px; text-align: center;">
							</div>
							<div class="input-group">
							  <span class="input-group-addon" style="width: 200px;">Email Address</span>
							  <input type="text" name="email"class="form-control" value="${email}" style="width: 350px; text-align: center;" readonly="readonly">
							</div>
							<br>
						
				       	 	<button type="submit" class="btn btn-primary">Save Details</button>
						
						</form>
						
						<a href="changePassword.biz?username=${username}" class="btn btn-info">Change Password</a>
						<a href="#" class="btn btn-danger">Buy Licence</a>
	      			</div>
	      			<br>
	      			
	      			
	      		</div>
	      	</div>
	    </div>
		
     </div>

</body>
</html>