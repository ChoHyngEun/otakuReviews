<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 회원가입 page -->
<!-- 이 페이지에서 회원정보를 등록하면 UserServlet > UserDAO를 통해 MySQL에 데이터가 전송됨 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Registration</title>
<link rel="stylesheet" href="css/userinfo.css">
</head>
<body>
<div align=center>
	<h1>We'll Otaku You 4EVA</h1>
	<i>Thousands of other Otakus are hyped to see you join them</i><br><hr><br><br>
	<!-- UserServlet 서블릿에 전송 -->
	
<div class="login-box">
  <h2>Login</h2>
  <form action="<%=request.getContextPath()%>/register" method="post">
    <div class="user-box">
      <input type="text" name="firstName" required="">
      <label>First Name</label>
    </div>
    <div class="user-box">
      <input type="text" name="lastName" required="">
      <label>Last Name</label>
    </div>
    <div class="user-box">
      <input type="text" name="userName" required="">
      <label>User ID</label>
    </div>
    <div class="user-box">
      <input type="password" name="password" required="">
      <label>PassWord</label>
    </div>
    <div class="user-box">
      <input type="text" name="address" required="">
      <label>Address</label>
    </div>
    <div class="user-box">
      <input type="text" name="email" required="">
      <label>email</label>
    </div>
    <div class="user-box">
      <input type="phone" name="phone" required="">
      <label>Phone</label>
    </div>
    <a href="#">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <input type="submit" value="SUBMIT">
    </a>
  </form>
</div>
	
</div>
</body>
</html>