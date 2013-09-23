<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>Bizgrass Login</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/biz_login_style.css" type="text/css" />
</head>
<body onload='document.f.j_username.focus();'>

	<div class="wrapper">
		<c:if test="${not empty error}">
			<div class="errorblock">
				Your login attempt was not successful, try again.<br /> Caused :
				${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
			</div>
		</c:if>
		<form class="form1" action="<c:url value='j_spring_security_check' />"
			method="post">

			<div class="formtitle">Login to your account</div>

			<div class="input">
				<div class="inputtext">Username:</div>
				<div class="inputcontent">

					<input type="text" name="j_username" />

				</div>
			</div>

			<div class="input nobottomborder">
				<div class="inputtext">Password:</div>
				<div class="inputcontent">

					<input type="password" name="j_password" /> <br />
					<a href="#">Forgot password?</a>

				</div>
			</div>

			<div class="buttons">

				<input class="orangebutton" type="submit" value="Login" /> <input
					class="greybutton" type="submit" value="Cancel" />

			</div>

		</form>

		<form class="form2" action="register.biz" method="post">

			<div class="formtitle">Register with Us</div>

			<div class="input">
				<div class="inputtext">Desired Username:</div>
				<div class="inputcontent">

					<input type="text" name="username" />

				</div>
			</div>

			<div class="input">
				<div class="inputtext">First Name:</div>
				<div class="inputcontent">

					<input type="text" name="firstname" />

				</div>
			</div>

			<div class="input">
				<div class="inputtext">Last Name:</div>
				<div class="inputcontent">

					<input type="text" name="lastname" />

				</div>
			</div>

			<div class="input">
				<div class="inputtext">Your Email:</div>
				<div class="inputcontent">

					<input type="text" name="email" />

				</div>
			</div>

			<div class="input">
				<div class="inputtext">Password:</div>
				<div class="inputcontent">

					<input type="password" name="password" />

				</div>
			</div>

			<div class="input">
				<div class="inputtext">Select Module:</div>
				<div class="inputcontent">

					<select name="plan">
						<optgroup label="Available Modules">
							<option>Dashboard</option>
							<option>CRM</option>
							<option>Analytics</option>
						</optgroup>
					</select>

				</div>
			</div>

			<div class="buttons">

				<input class="orangebutton" type="submit" value="Sign Up" /> <input
					class="orangebutton" type="reset" value="Reset" />

			</div>

		</form>

	</div>


</body>
</html>