# otakuReviews
this is where you will shine, mr.otaku.

==========================================================

포트폴리오 개발노트 2023 3월
개발인원 3명
JSP, JSTL, MVC, SERVLET, ECLIPSE, MYSQL...
portfolio[jsp_data main]
com.portfolio.registration.
//used com.mysql.cj.jdbc.Driver, not com.mysql.jdbc.Driver (depends on connector version)
//portfolio - build path - class module

===========================================================

0. 라이브러리: (webapp - WEB-INF - lib)
--03.07
//added jsp api 2.2
//added jstl 1.2
//added mysql connector
//added servlet api

===========================================================

1. MVC (Model-View-Controller) 패턴
--03.07
<MVC와 user 등록 시스템 구축>
//added model, dao, controller packages
//added User.java (JavaBean)
//added UserDAO.java (DAO)
//added UserServlet.java (Servlet)
//added userRegistration.jsp under views
//added userInfo.jsp under views

<MVC와 user 로그인&검증 시스템 구축>
//added UserLogin.java (JavaBean)
//added LoginDAO.java (DAO)


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
