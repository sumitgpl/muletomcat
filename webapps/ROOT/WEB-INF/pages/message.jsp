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
		  <li ><a href="myaccount.biz?username=${username}">My Account</a></li>
		  <li class="active"><a href="#">Messages</a></li>
		</ul>
		<br>
		<br>
		<br>
		<div class="container">
	      	<div class=".row">
	      		<div class="col-md-6 col-md-offset-3">
	      			<div class="row">
	      				<div class="panel-group" id="accordion">
						  <div class="panel panel-default">
						    <div class="panel-heading">
						      <h4 class="panel-title">
						        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
						          Welcome to Bizgrass
						        </a>
						      </h4>
						    </div>
						    <div id="collapseOne" class="panel-collapse collapse in">
						      <div class="panel-body">
						        Hi ${username}, <br><br> cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						        <br><br>
						        Regrads,<br>
						        Admin
						      </div>
						    </div>
						  </div>
						  <div class="panel panel-default">
						    <div class="panel-heading">
						      <h4 class="panel-title">
						        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
						          Explore Bizgrass Help
						        </a>
						      </h4>
						    </div>
						    <div id="collapseTwo" class="panel-collapse collapse">
						      <div class="panel-body">
						        Hi ${username}, <br><br>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						      	<br><br>
						        Regrads,<br>
						        Admin
						      </div>
						    </div>
						  </div>
						  <div class="panel panel-default">
						    <div class="panel-heading">
						      <h4 class="panel-title">
						        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
						          Contact Us
						        </a>
						      </h4>
						    </div>
						    <div id="collapseThree" class="panel-collapse collapse">
						      <div class="panel-body">
						       	Hi ${username}, <br><br>
						       	Please feel free to contact us at <a href="mailto:support@bizgrass.com">support@bizgrass.com</a>
						       	<br><br>
						        Regrads,<br>
						        Admin
						       	
						      </div>
						    </div>
						  </div>
						</div>
	      			</div>
	      		</div>
	      	</div>
	    </div>
		
     </div>

</body>
</html>