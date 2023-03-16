<!-- branch main -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 로그인 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wanna Login?</title>
<link rel="stylesheet" href="css/userinfo.css">
</head>
<body>
<div align=center>
	<h1>Sign In</h1>
	<!-- LoginServlet 서블릿에 로그인 정보를 전송함. 그 후 LoginServlet에서 validate 프로세스를 진행하여 data와 매치되는지 확인 -->
	<div class="login-box">
			<form action="<%=request.getContextPath()%>/login" method="post">
				<div class="user-box">
					<input type="text" name="userName">
					<label>User ID</label>
				</div>
				<div class="user-box">
					<input type="password" name="password">
					<label>Password</label>
				</div>
				<a href="#">
					<span></span>
					<span></span>
					<span></span>
					<span></span>
					<input type="submit" value="Login">
				</a>
			</form>
		</div>
</div>
</body>
</html>