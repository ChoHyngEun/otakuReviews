<div align=center>
  
<br>
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸
<br>
<br>
  
**:heart:OtakuReviews:heart:**<br>
*<sub>this is where you will shine, mr.otaku.:kiss:</sub>*<br>
<br>
🌸
<br>
포트폴리오 개발노트 2023 3월<br>
  TEAM: 🥀**손하연**
  ***The Queen***:crown:
<br>
개발인원: 3명:family_man_man_girl:<br>
목표: JSP, MySQL, SERVLET, MVC Pattern을 기반으로한 커피 등 상품에 관한 리뷰 웹 구축<br>
<br>
구성<br>
1.회원가입 (데이터연동)<br>
2.로그인(데이터연동, validation)<br>
3.리뷰페이지(product 리뷰 등록)<br>
4.마이페이지(정보 확인, 수정 가능 외 리뷰 내역 살펴보기)<br>
5.기타(수정 및 추가 예정)<br>
<br>
![Alt Text](https://media.giphy.com/media/3o7TKDcovELwB2DM64/giphy.gif)<br>
<br>
🌸
<br>
servlet nav guide<br>
  ~~/register (회원가입 화면)<br>~~
  ~~/login.jsp (로그인 화면)<br>~~
  **start the server from portfolio package itself then you'll be welcomed by "index.html" where you can navigate to other jsp files.**<br>
<br>
🌸
<br>
JSP, JSTL, JDBC, MVC, SERVLET, ECLIPSE, MYSQL...<br>
portfolio[jsp_data main]<br>
com.portfolio.registration.<br>
//used com.mysql.cj.jdbc.Driver, not com.mysql.jdbc.Driver (depends on connector version)<br>
//portfolio - build path - class module<br>
<br>
🌸
<br>
0.라이브러리: (webapp - WEB-INF - lib)<br>
  
--03.07<br>
//added jsp api 2.2<br>
//added jstl 1.2<br>
//added mysql connector<br>
//added servlet api<br>
<br>
🌸
<br>
1.MVC (Model-View-Controller) 패턴<br>
<br>
<MVC와 user 등록 시스템 구축><br>
<br>
--03.07<br>
//added model, dao, controller packages<br>
//added User.java (JavaBean)<br>
//added UserDAO.java (DAO)<br>
//added UserServlet.java (Servlet)<br>
//added userRegistration.jsp under views<br>
//added userInfo.jsp under views<br>
<br>
--03.08<br>
<br>
--03.09<br>
//added user info display (request.getParameter //내장객체 사용) to userInfo.jsp<br>
<br>
<MVC와 user 로그인&검증 시스템 구축><br>
<br>
--03.07<br>
//added UserLogin.java (JavaBean)<br>
//added LoginDAO.java (DAO)<br>
--03.08<br>
//added LoginServlet.java (Servlet)<br>
//added login.jsp<br>
//added welcome.jsp<br>
//added alert feature to LoginServlet.java (in case login validation fails)<br>
<br>
<MVC와 product review 등록 시스템 구축><br>
--03.10<br>
//added Product.java (JavaBean)<br>
//added ProductServlet.java (Servlet)<br>
//added ProductDAO.java (DAO)<br>
<br>
<MVC와 product review 리스트 시스템 구축><br>
--03.10<br>
//temporarily added packages for review model, review servlet, review dao<br>
<br>
🌸
<br>
2.MySQL<br>
(query file name: forPortfolio)<br>
<br>
<user 등록 sql><br>
<br>
--03.07<br>
<br>
//added user table (id: auto_increment)<br>
//added phone to user table<br>
//now using user table for both login and registration<br>
<br>
<user 로그인 sql><br>
<br>
--03.07<br>
//added login table<br>
--03.08<br>
//deleted login table<br>
--03.10<br>
//added table for brand (subject to changes)
//added table for review (subject to changes)
🌸
<br>
3. 기타<br>
--03.09<br>
//added main.jsp (메인페이지로 사용 예정)<br>
<br>
--03.10<br>
//removed main.jsp<br>
//added index.html (replacing main.jsp)<br>
<br>
--03.11<br>
//changed MySQL password to "Tkfkdgo450." Thus, updated DAO files as well.<br>
<br>
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸
<br>
</div>
