<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 로그인 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Temp Title</title>
</head>
<body>
<div align=center>
	<h1>temp UI for login</h1>
	<form action="<%=request.getContextPath()%>/login" method="post">
		User ID: <input type="text" name="userName"><br>
		Password: <input type="password" name="password"><br>
		<input type="submit" value="SUBMIT">
	</form>
</div>
</body>
</html>