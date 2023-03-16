<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 로그인 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wanna Login?</title>
</head>
<body>
<div align=center>
	<h1>I love you...</h1>
	<i>please sign in... Imma be waiting for you on the other side...</i><br><hr><br><br>
	<a href="index.jsp"><img src = "images/otaku.jpg"></a>
	<!-- LoginServlet 서블릿에 로그인 정보를 전송함. 그 후 LoginServlet에서 validate 프로세스를 진행하여 data와 매치되는지 확인 -->
	<form action="<%=request.getContextPath()%>/login" method="post">
		User ID: <input type="text" placeholder="otakulove" name="userName"><br><br>
		Password: <input type="password" placeholder="password" name="password"><br><br>
		<input type="submit" value="SUBMIT">
	</form>
</div>
</body>
</html>