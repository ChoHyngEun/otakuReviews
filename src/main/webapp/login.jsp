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
	<!-- LoginServlet 서블릿에 로그인 정보를 전송함. 그 후 LoginServlet에서 validate 프로세스를 진행하여 data와 매치되는지 확인 -->
	<form action="<%=request.getContextPath()%>/login" method="post">
		User ID: <input type="text" name="userName"><br>
		Password: <input type="password" name="password"><br>
		<input type="submit" value="SUBMIT">
	</form>
</div>
</body>
</html>