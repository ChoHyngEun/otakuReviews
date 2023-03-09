<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 메인 페이지 -->
<%
	request.setCharacterEncoding("utf-8");
	String firstName=request.getParameter("firstName");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main page temp title</title>
</head>
<body>
<h1>u want some beef bro... this page so main af bruh</h1>

<h2><%=firstName %>님 환영합니다~~~</h2>
</body>
</html>