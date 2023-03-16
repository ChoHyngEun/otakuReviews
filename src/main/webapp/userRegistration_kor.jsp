<!-- branch main -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 회원가입 page -->
<!-- 이 페이지에서 회원정보를 등록하면 UserServlet > UserDAO를 통해 MySQL에 데이터가 전송됨 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="css/userinfo.css">
</head>
<body>

<div align=center>

<div class="login-box">

  <h2>회원가입</h2>
  <form action="<%=request.getContextPath()%>/register" method="post">
    <div class="user-box">
      <input type="text" placeholder="David" name="firstName">
      <label>이름</label>
    </div>
    <div class="user-box">
      <input type="text" placeholder="Kim" name="lastName">
      <label>성</label>
    </div>
    <div class="user-box">
      <input type="text" placeholder="userID" name="userName">
      <label>아이디</label>
    </div>
    <div class="user-box">
      <input type="password" placeholder="password" name="password">
      <label>비밀번호</label>
    </div>
    <div class="user-box">
      <input type="text" placeholder="833 East River Pkwy" name="address">
      <label>주소</label>
    </div>
    <div class="user-box">
      <input type="text" placeholder="otaku@gmail.com" name="email">
      <label>이메일</label>
    </div>
    <div class="user-box">
      <input type="text" placeholder="01012345678"name="phone">
      <label>전화번호</label>
    </div>
    
    <a href="#">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <input type="submit" value="등록하기">
 	</a>
  </form>
  
</div>

</div>

</body>
</html>