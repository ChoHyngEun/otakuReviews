<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Temp Title</title>
</head>
<body>
<div align=center>
	<h1>temp title (registration)</h1>
	<!-- UserServlet URL: /register 과 action을 통해 연결 -->
	<form action="<%=request.getContextPath()%>/register" method="post">
		First Name: <input type="text" name="firstName"><br>
		Last Name: <input type="text" name="lastName"><br>
		User ID: <input type="text" name="userName"><br>
		Password: <input type="password" name="password"><br>
		Address: <input type="text" name="address"><br>
		Email: <input type="text" name="email"><br>
		Phone: <input type="text" name="phone"><br>
		<input type="submit" value="SUBMIT">
	</form>
</div>
</body>
</html>