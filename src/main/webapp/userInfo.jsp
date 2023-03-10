<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
    
<!-- request 내장 객체 바인딩을 통해 user 정보 표시 //request.getParameter 사용 -->
<!-- User에 저장된 객체 정보를 불러오기 위함임 (request.getParameter) -->
<%
	request.setCharacterEncoding("utf-8");
	String firstName=request.getParameter("firstName");
	String lastName=request.getParameter("lastName");
	String userName=request.getParameter("userName");
	String address=request.getParameter("address");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
%>

<!-- 회원가입 성공시 redirect되는 페이지 // 회원등록 정보를 표시하고 메인페이지로 이동하는 버튼 구현 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Temp Title (redirects here if successful registration)</title>
</head>
<body>
<div align=center>
	<h1>user registration successful</h1>
	<br>
	<!-- User에 저장된 유저 정보를 가져옴 -->
	<h3>firstName: <%=firstName %></h3>
	<h3>lastName: <%=lastName %></h3>
	<h3>user ID: <%=userName %></h3>
	<h3>address: <%=address %></h3>
	<h3>email: <%=email %></h3>
	<h3>phone: <%=phone %></h3>
	<a href="login.jsp"><button>Login</button></a>
	
</div>
</body>
</html>