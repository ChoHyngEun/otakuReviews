<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Temp Title</title>
</head>
<body>
	<h1>Registration Form</h1>
	<!-- UserServlet URL: /register -->
	<form action="<%=request.getContextPath() %>/register" method="post">
		First Name: <input type="text" name="firstName"><br>
		Last Name: <input type="text" name="lastName"><br>
		User ID: <input type="text" name="userName"><br>
		Password: <input type="password" name="password"><br>
		Address: <input type="text" name="address"><br>
		Email: <input type="text" name="email"><br>
		Phone: <input type="text" name="phone"><br>
		<input type="submit" value="SUBMIT">
	</form>
</body>
</html>