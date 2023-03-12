<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 회원가입 page -->
<!-- 이 페이지에서 회원정보를 등록하면 UserServlet > UserDAO를 통해 MySQL에 데이터가 전송됨 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Registration</title>
</head>
<body>
<div align=center>
	<h1>We'll Otaku You 4EVA</h1>
	<i>Thousands of other Otakus are hyped to see you join them</i><br><hr><br><br>
	<!-- UserServlet 서블릿에 전송 -->
	<form action="<%=request.getContextPath()%>/register" method="post">
		First Name: <input type="text" name="firstName"><br><br>
		Last Name: <input type="text" name="lastName"><br><br>
		User ID: <input type="text" name="userName"><br><br>
		Password: <input type="password" name="password"><br><br>
		Address: <input type="text" name="address"><br><br>
		Email: <input type="text" name="email"><br><br>
		Phone: <input type="text" name="phone"><br><br>
		<input type="submit" value="SUBMIT">
	</form>
</div>
</body>
</html>