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
<!-- 멤버 환영 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome User</title>
</head>
<body>
<div align=center>
	<h1>Congratulations!</h1>
	<i>We cherish all Otakus in this world</i>
	<i>and YOU are my favorite</i>
	<i>---- welcome bud! :)</i>
	<br><hr><br><br>
	<h3>(/'o')/ Your user information \\('o'\\))</h3>
	<!-- User에 저장된 유저 정보를 가져옴 -->
	<p>firstName: <%=firstName %></p>
	<p>lastName: <%=lastName %></p>
	<p>user ID: <%=userName %></p>
	<p>address: <%=address %></p>
	<p>email: <%=email %></p>
	<p>phone: <%=phone %></p>
	<a href="login.jsp"><button>GO!</button></a>
	
</div>
</body>
</html>