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
1.<완> 회원가입 (데이터연동)<br>
2.<완> 로그인(데이터연동, validation)<br>
3.<완> 리뷰페이지(product 리뷰 등록)<br>
4.마이페이지(정보 확인, 수정 가능 외 리뷰 내역 살펴보기)<br>
5.<완> 관리자 admin 로그인 구현 및 관리자용 jsp 페이지 구현 (모든 리뷰, 유저 리스트)<br>
6.<완> session 바인딩 로그인 로그아웃 구현<br>
7.(예정) 관리자 페이지 리뷰, 유저정보 수정 추가 삭제 구현<br>
8.<진행중> product별 리뷰 상세페이지<
<br>
![Alt Text](https://media.giphy.com/media/3o7TKDcovELwB2DM64/giphy.gif)<br>
<br>
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸<br>
<br>
servlet nav guide<br>
  ~~/register (회원가입 화면)<br>~~
  ~~/login.jsp (로그인 화면)<br>~~
  **start the server from portfolio package itself then you'll be welcomed by "index.html" where you can navigate to other jsp files.**<br>
<br>
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸<br>
<br>
JSP, JSTL, JDBC, MVC, SERVLET, ECLIPSE, MYSQL...<br>
portfolio[jsp_data main]<br>
com.portfolio.registration.<br>
//used com.mysql.cj.jdbc.Driver, not com.mysql.jdbc.Driver (depends on connector version)<br>
//portfolio - build path - class module<br>
<br>
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸<br>
<br>
0.라이브러리: (webapp - WEB-INF - lib)<br>
<br>
--03.07<br>
//added jsp api 2.2<br>
//added jstl 1.2<br>
//added mysql connector<br>
//added servlet api<br>
<br>
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸<br>
<br>
1.MVC (Model-View-Controller) 패턴<br>
<br>
<MVC와 user 등록 시스템 구축><br>
--03.07<br>
//added model, dao, controller packages<br>
//added User.java (JavaBean)<br>
//added UserDAO.java (DAO)<br>
//added UserServlet.java (Servlet)<br>
//added userRegistration.jsp under views<br>
//added userInfo.jsp under views<br>
--03.08<br>
--03.09<br>
//added user info display (request.getParameter //내장객체 사용) to userInfo.jsp<br>
<br>
<MVC와 user 로그인&검증 시스템 구축><br>
--03.07<br>
//added UserLogin.java (JavaBean)<br>
//added LoginDAO.java (DAO)<br>
--03.08<br>
//added LoginServlet.java (Servlet)<br>
//added login.jsp<br>
//added welcome.jsp<br>
//added alert feature to LoginServlet.java (in case login validation fails)<br>
--03.12~13<br>
//updated LoginServlet.java<br>
//added Logout Servlet<br>
//added session login and logout<br>
//added admin login system<br>
<br>
--03.13<br>
//deleted index.html
//added index.jsp
//completed login session binding system
//edited index.jsp so that some features are hidden for signed-in users such as "회원가입" and "로그인"
<MVC와 product review 등록 시스템 구축><br>
--03.10<br>
//added Product.java (JavaBean)<br>
//added ProductServlet.java (Servlet)<br>
//added ProductDAO.java (DAO)<br>
--03.14<br>
//edit logout servlet<br>
<br>
<MVC와 product review 리스트 시스템 구축><br>
--03.10<br>
//temporarily added packages for review model, review servlet, review dao<br>
--03.12<br>
//added MVC for review sql and jsp<br>
//added jstl libraries and statements in review.jsp (review.jsp working as intended and userInfo.jsp will replace review.jsp to list only review items that belong to the signed-in user<br>
--03.13<br>
//added admin jsp page where all products and user information are displayed<br>
<br>
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸<br>
<br>
2.MySQL<br>
(query file name: forPortfolio)<br>
<br>
<user 등록 sql><br>
--03.07<br>
//added user table (id: auto_increment)<br>
//added phone to user table<br>
//now using user table for both login and registration<br>
<br>
<user 로그인 sql><br>
--03.07<br>
//added login table<br>
--03.08<br>
//deleted login table<br>
--03.10<br>
//added table for brand (subject to changes)<br>
//added table for review (subject to changes)<br>
<br>
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸<br>
<br>
3. 기타<br>
<br>
--03.09<br>
//added main.jsp (메인페이지로 사용 예정)<br>
--03.10<br>
//removed main.jsp<br>
//added index.html (replacing main.jsp)<br>
--03.11<br>
//changed MySQL password to "Tkfkdgo450." Thus, updated DAO files as well.<br>
--03.12<br>
//added jstl core and jstl sql library and statements in review.jsp<br>
--03.13<br>
//updated css<br>
--03.14<br>
//added images folder<br>
<br>
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸<br>
<br>
</div>
