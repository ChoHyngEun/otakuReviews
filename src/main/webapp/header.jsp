<%@ page import="com.portfolio.registration.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link href="css/productInfo.css" rel="stylesheet" type="text/css">


</head>
<%
	User user = (User) session.getAttribute("user");
	int userStatus = 0;
	
	if (user != null) {
		if (user.getUserName() != null) {
			userStatus = 1;
		}
	}
%>
<body>
  <header>
	<div class="main-menu">
       	<h1></h1><a href="index.jsp" class="logo"><span>오타쿠의</span> <br>믿고보는 리뷰</a></h1>
    </div>

    <div class="inner">

<div class="sub-menu">
    <ul class="menu">
        <li><a href="#" onclick="login()" id="loginButton">로그인</a></li>
        <li><a href="#" onclick="logout()" id="logoutButton" style="display:none;">로그아웃</a></li>
        <li><a href="#" onclick="register()" id="registerButton">회원가입</a></li>
        <li><a href="#" onclick="reviewregister()" id="reviewRegistration">리뷰 등록</a></li>
        <li><a href="#" onclick="reviewlist()" id="reviewButton">작성한 리뷰 확인하기</a></li>
    </ul>
</div>
  <script type="text/javascript">
    function login() {
        window.location.href = "login.jsp";
    }
    function logout() {
        window.location.href = "/portfolio/logout";
    }
    function register() {
        window.location.href = "userRegistration.jsp";
    }
    function reviewregister() {
        window.location.href = "reviewRegistration.jsp";
    }
    function reviewlist() {
        window.location.href = "review.jsp";
    }

    // 로그인 상태 체크하여 버튼 보이기/숨기기
    <% 
        String userName = (String) session.getAttribute("userName"); // 세션에서 userName 값 가져오기
        if (userName != null) { // 로그인 상태인 경우
    %>
        document.getElementById('loginButton').style.display = 'none'; // 로그인 버튼 숨기기
        document.getElementById('logoutButton').style.display = 'block';//로그아웃 버튼 보이기
        document.getElementById('registerButton').style.display = 'none';// 회원가입 버튼 숨기기
        document.getElementById('reviewRegistration').style.display = 'block';//리뷰작성버튼
        document.getElementById('reviewButton').style.display = 'block';// 작성한리뷰확인버튼
    <% 
        } else { // 로그인 상태가 아닌 경우
    %>
        document.getElementById('loginButton').style.display = 'block'; // 로그인 버튼 보이기
        document.getElementById('logoutButton').style.display = 'none'; // 로그아웃 버튼 숨기기
        document.getElementById('registerButton').style.display = 'block';// 회원가입 버튼 보이기
        document.getElementById('reviewRegistration').style.display = 'none';//리뷰작성버튼
        document.getElementById('reviewButton').style.display = 'none';// 작성한리뷰확인버튼
    <% 
        } 
    %>


    </script>
    </div>
    </header>
    </body>
    </html>
