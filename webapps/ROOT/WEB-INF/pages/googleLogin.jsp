<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="j_spring_openid_security_check" method="post">
		<input name="openid_identifier" size="50" maxlength="100"
			type="hidden" value="https://www.google.com/accounts/o8/id" /> 
			<input type="submit" value="Sign in with Google" />
	</form>
</body>
</html>