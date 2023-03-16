<!-- branch main -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 로그인 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="css/userinfo.css">
</head>
<body>
<div align=center>
	<h1>로그인</h1>
	<!-- LoginServlet 서블릿에 로그인 정보를 전송함. 그 후 LoginServlet에서 validate 프로세스를 진행하여 data와 매치되는지 확인 -->
	<div class="login-box">
		<form action="<%=request.getContextPath()%>/login" method="post">
			<div class="user-box">			
				<input type="text" name="userName">
				<label>아이디</label>
			</div>
			<div class="user-box">				
				<input type="password" name="password">
				<label>비밀번호</label>
			</div>
			<a href="#">
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<input type="submit" value="로그인">
			</a>
		</form>
	</div>
</div>
</body>
</html>