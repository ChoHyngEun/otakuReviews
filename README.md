**OtakuReviews**

*<sub>this is where you will shine, mr.otaku.</sub>*

==========================================================

포트폴리오 개발노트 2023 3월
개발인원 3명
JSP, JSTL, MVC, SERVLET, ECLIPSE, MYSQL...
portfolio[jsp_data main]
com.portfolio.registration.
//used com.mysql.cj.jdbc.Driver, not com.mysql.jdbc.Driver (depends on connector version)<br>
//portfolio - build path - class module<br>

===========================================================

0. 라이브러리: (webapp - WEB-INF - lib)
--03.07
//added jsp api 2.2<br>
//added jstl 1.2<br>
//added mysql connector<br>
//added servlet api<br>

===========================================================

1. MVC (Model-View-Controller) 패턴
--03.07
<MVC와 user 등록 시스템 구축><br>
//added model, dao, controller packages<br>
//added User.java (JavaBean)<br>
//added UserDAO.java (DAO)<br>
//added UserServlet.java (Servlet)<br>
//added userRegistration.jsp under views<br>
//added userInfo.jsp under views<br>

<MVC와 user 로그인&검증 시스템 구축><br>
//added UserLogin.java (JavaBean)<br>
//added LoginDAO.java (DAO)<br>


===========================================================

2. MySQL
(query file name: forPortfolio)
--03.07
<user 등록 sql>
//added user table (id: auto_increment)
//added phone to user table

<user 로그인 sql>
//added login table

===========================================================

3. 기타
