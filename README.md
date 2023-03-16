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
  
  ![cat](https://user-images.githubusercontent.com/116807050/225398486-062a9a5b-9d9c-4b2e-bc1e-e0edde1aab1c.png)

<br>
  
🌸🌸🌸🌸***구성***🌸🌸🌸🌸<br>
  
<br>
  
**1. 회원가입** 
  
  <br>
  >>> MVC, JSP, 데이터베이스 연계를 통한 성공적 회원가입 구현<br>
  >>> User ID가 중복된 경우 회원가입을 제한하는 기능 구현<br>
  >>> (미구현) User ID 중복확인 버튼 미구현 (현재는 유저가 정보 입력후 Submit 버튼을 클릭해 데이터를 전송하고나서야<br>
  User ID가 중복되어 가입이 불가하다는 사실을 알 수 있음.<br>
  >>> alter table query를 이용하여 데이터베이스에서 유저 삭제 후 새롭게 추가되는 유저가, 삭제로 인해 생겼던 빈 공간을 메꾸며 id가 순서대로 저장되도록 구현<br>
  <br>
  
**2. 로그인/로그아웃 및 세션 유지**
  
  <br>
  >>> MVC, JSP, 데이터베이스 연동 성공적<br>
  >>> 로그인 후 세션 내내 로그인 상태가 유지되게 구현함<br>
  >>> 로그아웃 기능 구현 (세션 끊기)<br>
  >>> 로그인/비로그인 세션 구분하여 특정 메뉴 UI 감추기/보이기 구현<br>
  >>> 데이터베이스에 없거나 불일치하는 정보 입력시 로그인 불가능하게 구현<br>
  >>> 세션유지를 토대로 UI에 User ID 출력 및 데이터연동을 이용한 유저별 개인 리스트 불러오도록 구현<br>
  >>> 비로그인 상태로 특정한 유저 전용 메뉴 접근시, 접근을 막고 로그인을 권유하는 기능 구현<br>
  >>> 관리자 전용 로그인 구현 (아래 5번 참조)<br>
  <br>
  
**3. 리뷰등록 및 리스트 불러오기**
  
  <br>
  >>> MVC, JSP, 데이터베이스 연동 성공적<br>
  >>> 리뷰등록은 로그인 상태에서만 UI에 출력되도록 구현<br>
  >>> 비로그인 상태로 리뷰등록 비정상 접근시, 접근을 막고 로그인을 권유하는 기능 구현<br>
  >>> 리뷰 리스트 보기 기능은 비로그인도 접근 가능하게 구현<br>
  >>> 상품 브랜드별 링크 클릭시, 데이터베이스 연동을 이용하여 해당 브랜드와 관련한 리뷰만 불러오는 기능 구현<br>
  >>> alter table query를 이용하여 데이터베이스에서 리뷰 삭제 후 새롭게 추가되는 리뷰가, 삭제로 인해 생겼던 빈 공간을 메꾸며 id가 순서대로 저장되도록 구현<br>
  <br>
  
**4. 마이페이지**
  
  <br>
  >>> 로그인해야만 UI에 표시되게 구현<br>
  >>> 로그인해야만 접근 가능하게 구현<br>
  >>> 유저 개인만의 리뷰 History 확인 가능하게 구현<br>
  >>> 유저의 회원가입 정보 확인 가능하게 구현 (비밀번호 제외)<br>
  >>> (미구현) 유저가 직접 회원가입 정보 수정 가능하게 하는 기능 미구현<br>
  <br>
  
**5. 관리자**
  
  <br>
  >>> 관리자 계정으로 로그인해야만 표시되는 UI 링크 구현<br>
  >>> 비정상적인 방법으로 Servlet 링크나 파일명을 주소창에 입력하여 관리자가 아닌 계정이 접근시도해도 접근이 차단되도록 구현<br>
  >>> 관리자만 접근 가능한 페이지에서 모든 유저와 리뷰의 리스트 불러오기 기능 구현<br>
  >>> 모든 유저 추가, 삭제 구현<br>
  >>> 모든 리뷰 추가, 삭제 구현<br>
  >>> (미구현) 모든 유저와 리뷰의 정보 수정하기 기능 미구현<br>
  <br>
<br>
  
![Alt Text](https://media.giphy.com/media/3o7TKDcovELwB2DM64/giphy.gif)<br>
  
<br>
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸<br>
<br>
servlet nav guide<br>
  ~~/register (회원가입 화면)<br>~~
  ~~/login.jsp (로그인 화면)<br>~~
  **start the server from portfolio package itself then you'll be welcomed by "index.jsp" where you can navigate to other jsp files.**<br>
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
--03.14<br>
//added util_forUserInsert.jsp<br>
//added util_forUserDelete.jsp<br>
--03.15<br>
//edited UserServlet (중복 ID 회원가입 제한)<br>
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
//deleted index.html<br>
//added index.jsp<br>
//completed login session binding system<br>
//edited index.jsp so that some features are hidden for signed-in users such as "회원가입" and "로그인"<br>
--03.15<br>
//admin login system final<br>
//edited so that user needs only admin authen token to get an access to forAdmin.jsp (security)<br>
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
--03.14<br>
//added util_forProductInsert.jsp<br>
//added util_forProductDelete.jsp<br>
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
--03.14<br>
//edit overall sql<br>
--03.15<br>
//MySQL final edit<br>
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
//added index.css<br>
//added reviewregistration.css<br>
//added userinfo.css<br>
//added main.js<br>
//added youtube.js<br>
--03.15<br>
//edited myreview page to ME (my information and review history) page<br>
//added admin page show&hide<br>
<br>
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸<br>
<br>
</div>
