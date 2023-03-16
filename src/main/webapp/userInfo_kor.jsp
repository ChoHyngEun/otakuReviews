<!-- branch main -->
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
<title>환영페이지</title>
</head>
<body>
<div align=center>
	<h1>축하합니다!</h1>
	<i>우리는 전 세계의 오타쿠를 소중히 여깁니다.</i>
	<i>그리고.. 그중에 당신은 제가 가장 좋아하는 사람이죠!</i>
	<i>---- 환영합니다, 오타쿠님! :)</i>
	<br><hr><br><br>
	<h3>(/'o')/ 당신의 회원가입 정보입니다. \\('o'\\))</h3>
	<!-- User에 저장된 유저 정보를 가져옴 -->
	<p>이름 : <%=firstName %></p>
	<p>성 : <%=lastName %></p>
	<p>아이디 : <%=userName %></p>
	<p>주소 : <%=address %></p>
	<p>이메일 : <%=email %></p>
	<p>전화번호 : <%=phone %></p>
	<a href="login.jsp"><button>시작하기</button></a>
	
</div>
</body>
</html>