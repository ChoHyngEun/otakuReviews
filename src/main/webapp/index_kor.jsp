<!-- branch main -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오타쿠의 믿고보는 리뷰</title>

<link rel="icon" href="/favicon.png" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
<!--GSAP & ScrollToPlugin-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js" integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ==" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js" integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q==" crossorigin="anonymous"></script>
<!--Swiper-->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!--ScrollMagic-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>
<!--Lodash-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js" integrity="sha512-90vH1Z83AJY9DmlWa8WkjkV79yfS2n2Oxhsi2dZbIv0nC4E6m5AbH8Nh156kkM7JePmqD6tcZsfad1ueoaovww==" crossorigin="anonymous"></script>
<script defer src="./js/main.js"></script>
<script defer src="./js/youtube.js"></script>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/index.css" rel="stylesheet" type="text/css">

</head>
<body>

<%
	String userName = (String)session.getAttribute("userName");
%>          	
	
  <header>
   
    <div class="inner">

<div class="sub-menu">
    <ul class="menu">
    
    	<% 
  			if (userName != null) {
  		%>
			<li>환영합니다, <%=userName %>님.</li>
		<%
    		}else{
		%>
			<li>로그인 하세요 :)</li>
		<%
    		}
		%>
		
        <li><a href="#" onclick="login()" id="loginButton">로그인</a></li>
        <li><a href="#" onclick="logout()" id="logoutButton" style="display:none;">로그아웃</a></li>
        <li><a href="#" onclick="register()" id="registerButton">회원가입</a></li>
        <li><a href="#" onclick="reviewregister()" id="reviewRegistration">리뷰남기기</a></li>
        <li><a href="#" onclick="myReviews()" id="reviewButton">마이페이지</a></li>
        <li><a href="#" onclick="goToAdmin()" id="goToAdmin">관리자페이지</a></li>
        <li><a href="index.jsp" onclick="translate()" id="goTotranslate">English</a></li>
    </ul>

  <script type="text/javascript">
    function login() {
        window.location.href = "login_kor.jsp";
    }
    function logout() {
        window.location.href = "/portfolio/logout";
    }
    function register() {
        window.location.href = "userRegistration_kor.jsp";
    }
    function reviewregister() {
        window.location.href = "reviewRegistration_kor.jsp";
    }
    function reviewlist() {
        window.location.href = "review_kor.jsp";
    }
    function myReviews(){
    	window.location.href = "myReviews_kor.jsp";
    }
    function reviewStarbucks(){
    	window.location.href = "productInfo_Starbucks.jsp";
    }
    function reviewMega(){
    	window.location.href = "productInfo_Mega.jsp";
    }
    function reviewPaik(){
    	window.location.href = "productInfo_Paik.jsp";
    }
    function goToAdmin(){
    	window.location.href = "forAdmin_kor.jsp";
    }

    // 로그인 상태 체크하여 버튼 보이기/숨기기
    <% 
        /* String userName = (String) session.getAttribute("userName"); */ // 세션에서 userName 값 가져오기
        if (userName != null) { // 로그인 상태인 경우
    %>
        document.getElementById('loginButton').style.display = 'none'; // 로그인 버튼 숨기기
        document.getElementById('logoutButton').style.display = 'block';//로그아웃 버튼 보이기
        document.getElementById('registerButton').style.display = 'none';// 회원가입 버튼 숨기기
        document.getElementById('reviewRegistration').style.display = 'block';//리뷰작성버튼 보이기
      
        <%
        	if(userName.equals("admin")){
        %>
      	//관리자 보이기
        document.getElementById('goToAdmin').style.display = 'block';
        <%
        	}else{
        %>
        //관리자 숨기기
        document.getElementById('goToAdmin').style.display = 'none';
        <%
        	}
        %>
        document.getElementById('reviewButton').style.display = 'block';// 리뷰 및 내 정보 버튼 보이기
    	<% 
    	 // 로그인 상태가 아닌 경우
        }else {
    	%>
        document.getElementById('loginButton').style.display = 'block'; // 로그인 버튼 보이기
        document.getElementById('logoutButton').style.display = 'none'; // 로그아웃 버튼 숨기기
        document.getElementById('registerButton').style.display = 'block';// 회원가입 버튼 보이기
        document.getElementById('reviewRegistration').style.display = 'none';//리뷰작성버튼 숨기기
        document.getElementById('goToAdmin').style.display = 'none'; //관리자 숨기기
        document.getElementById('reviewButton').style.display = 'none';// 리뷰 및 내 정보 버튼 숨기기
    	
    	<%
        }
    	%>

    </script>

	<!--메인페이지시작-->
        <ul class="sns">
            <li>
              <a href="javascript:void(0)">
                <img src="https://www.ediya.com/images/common/top_sns01.gif" alt="EDIYA"/>
              </a>
            </li>
            <li>
              <a href="javascript:void(0)">
                <img src="https://www.ediya.com/images/common/top_sns02.gif" alt="EDIYA"/>
              </a>
            </li>
            <li>
              <a href="javascript:void(0)">
                <img src="https://www.ediya.com/images/common/top_sns03.gif" alt="EDIYA"/>
              </a>
            </li>
            <li>
              <a href="javascript:void(0)">
                <img src="https://www.ediya.com/images/common/top_sns04.gif" alt="EDIYA"/>
              </a>
            </li>
          </ul>
          
        <div class="search">
          <input type="text" />
          <span class="material-icons">search</span>
        </div>
        
      </div>
            <ul class="main-menu">
            <li><a href="index_kor.jsp" class="logo"><span>오타쿠의</span> <br>믿고보는 리뷰</a></li>
            
        <li class="item">
          <div class="item__name">메뉴</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>브랜드</h4>
                  <ul>
                    <li><a href="https://www.starbucks.com" target="_blank">스타벅스</a></li>
                    <li><a href="https://www.mega-mgccoffee.com" target="_blank">메가커피</a></li>
                    <li><a href="https://paikdabang.com" target="_blank">빽다방</a></li>
                  </ul>
                </li>
                <li>
                  <h4>오타쿠 리뷰</h4>
                  <ul>
                    <li><a href="#" onClick="reviewregister()" id="reviewRegistration">리뷰남기기</a></li>
                    <li><a href="#" onClick="reviewStarbucks()">스타벅스 리뷰</a></li>
                    <li><a href="#" onClick="reviewMega()">메가커피 리뷰</a></li>
                    <li><a href="#" onClick="reviewPaik()">빽다방 리뷰</a>
                  </ul>
                </li>
                
                <li>
                  <h4>이벤트</h4>
                  <ul>
                    <li><a href="underConstruction.jsp">공사중</a></li>
                  </ul>
                </li>
                <li>
                  <h4>오타쿠 뉴스</h4>
                  <ul>
                    <li><a href="news.jsp">공지사항</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name">오타쿠 리뷰</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>브랜드</h4>
                  <ul>
                    <li><a href="https://www.starbucks.com" target="_blank">스타벅스</a></li>
                    <li><a href="https://www.mega-mgccoffee.com" target="_blank">메가커피</a></li>
                    <li><a href="https://paikdabang.com" target="_blank">빽다방</a></li>
                  </ul>
                </li>
                <li>
                  <h4>오타쿠 리뷰</h4>
                  <ul>
                    <li><a href="#" onClick="reviewregister()" id="reviewRegistration">리뷰남기기</a></li>
                    <li><a href="#" onClick="reviewStarbucks()">스타벅스 리뷰</a></li>
                    <li><a href="#" onClick="reviewMega()">메가커피 리뷰</a></li>
                    <li><a href="#" onClick="reviewPaik()">빽다방 리뷰</a>
                  </ul>
                </li>
                
                <li>
                  <h4>이벤트</h4>
                  <ul>
                    <li><a href="underConstruction.jsp">공사중</a></li>
                  </ul>
                </li>
                <li>
                  <h4>오타쿠 뉴스</h4>
                  <ul>
                    <li><a href="news.jsp">공지사항</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
        
        <li class="item">
          <div class="item__name">이벤트</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>브랜드</h4>
                  <ul>
                    <li><a href="https://www.starbucks.com" target="_blank">스타벅스</a></li>
                    <li><a href="https://www.mega-mgccoffee.com" target="_blank">메가커피</a></li>
                    <li><a href="https://paikdabang.com" target="_blank">빽다방</a></li>
                  </ul>
                </li>
                <li>
                  <h4>오타쿠 리뷰</h4>
                  <ul>
                    <li><a href="#" onClick="reviewregister()" id="reviewRegistration">리뷰남기기</a></li>
                    <li><a href="#" onClick="reviewStarbucks()">스타벅스 리뷰</a></li>
                    <li><a href="#" onClick="reviewMega()">메가커피 리뷰</a></li>
                    <li><a href="#" onClick="reviewPaik()">빽다방 리뷰</a>
                  </ul>
                </li>
                
                <li>
                  <h4>이벤트</h4>
                  <ul>
                    <li><a href="underConstruction.jsp">공사중</a></li>
                  </ul>
                </li>
                <li>
                  <h4>오타쿠 뉴스</h4>
                  <ul>
                    <li><a href="news.jsp">공지사항</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name">오타쿠 뉴스</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>브랜드</h4>
                  <ul>
                    <li><a href="https://www.starbucks.com" target="_blank">스타벅스</a></li>
                    <li><a href="https://www.mega-mgccoffee.com" target="_blank">메가커피</a></li>
                    <li><a href="https://paikdabang.com" target="_blank">빽다방</a></li>
                  </ul>
                </li>
                <li>
                  <h4>오타쿠 리뷰</h4>
                  <ul>
                    <li><a href="#" onClick="reviewregister()" id="reviewRegistration">리뷰남기기</a></li>
                    <li><a href="#" onClick="reviewStarbucks()">스타벅스 리뷰</a></li>
                    <li><a href="#" onClick="reviewMega()">메가커피 리뷰</a></li>
                    <li><a href="#" onClick="reviewPaik()">빽다방 리뷰</a>
                  </ul>
                </li>
                
                <li>
                  <h4>이벤트</h4>
                  <ul>
                    <li><a href="underConstruction.jsp">공사중</a></li>
                  </ul>
                </li>
                <li>
                  <h4>오타쿠 뉴스</h4>
                  <ul>
                    <li><a href="news.jsp">공지사항</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>

    </div>
    </header>
    
<%-- <div class="top">
		
        <ul>
            <li><a href="review.jsp">All Reviews</a></li>
            <li><a href="reviewRegistration.jsp">Leave a Review</a></li>
            <%
                String username= (String)session.getAttribute("userName");  
          		
                if (username == null) {
            %>
            <li><a href="userRegistration.jsp">Sign Up</a></li>
            <li><a href="login.jsp">Sign In</a></li>

        <% } else {
         %>
         
            <li>Hi, <%=username %></li>
            
            <form action="logout" method="get">
            	<input type="submit" value="Logout" />
        	</form>
        	
        <% }%>
        </ul>
		
</div> --%>

<!-- 메인 페이지 -->
  <section class="notice">

    <!--NOTICE LINE-->
    <div class="notice-line">
      <div class="inner">

        <div class="inner__left">
          
              <div class="swiper-slide"><h2>공지사항</h2>
                <a href="javascript:void(0)">고객센터는 주말에 운영하지 않습니다.</a>
              </div>
      
          <a href="javascript:void(0)" class="notice-line__more">
            <span class="material-icons">arrow_forward</span>
          </a>
        </div>
      </div>
    </div>
    <!--PROMOTION-->
    <div class="promotion">
      
      <div class="swiper-container">
        <div class ="p_title">
          <h2>메뉴</h2>
        </div>
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <img src="https://img.79plus.co.kr/megahp/manager/upload/menu/20220630162318_1656573798017_43JQ0t0JCi.jpg" alt="2023 뜨거운 여름을 물량으로 날려버릴 메가리카노!" />
            <a href="javascript:void(0)" class="btn" onclick="btn_mega()">자세히 보기</a>
          </div>
          <div class="swiper-slide">
            <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110563]_20210426095937808.jpg" alt="2023 스타벅스만의 트렌디한 계절 여러분을 초대합니다!" />
            <a href="javascript:void(0)" class="btn" onclick="btn_stb()">자세히 보기</a>
          </div>
          <div class="swiper-slide">
            <img src="https://paikdabang.com/wp-content/uploads/2018/05/ICED-%EB%8B%AC%EB%8B%AC%EC%97%B0%EC%9C%A0%EB%9D%BC%EB%96%BC_-450x588.png" alt="아휴 나몰라유? 나유 나! 맛의 대부 Baek이 추천하는 연유라떼!" />
            <a href="javascript:void(0)" class="btn" onclick="btn_paik()">자세히 보기</a>
          </div>
          <div class="swiper-slide">
            <img src="https://img.79plus.co.kr/megahp/manager/upload/menu/20220630162318_1656573798017_43JQ0t0JCi.jpg" alt="2023 뜨거운 여름을 물량으로 날려버릴 메가리카노!" />
            <a href="javascript:void(0)" class="btn" onclick="btn_mega()">자세히 보기</a>
          </div>
          <div class="swiper-slide">
            <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110563]_20210426095937808.jpg" alt="2023 스타벅스만의 트렌디한 계절 여러분을 초대합니다!" />
            <a href="javascript:void(0)" class="btn" onclick="btn_stb()">자세히 보기</a>
          </div>
          <div class="swiper-slide">
            <img src="https://paikdabang.com/wp-content/uploads/2018/05/ICED-%EB%8B%AC%EB%8B%AC%EC%97%B0%EC%9C%A0%EB%9D%BC%EB%96%BC_-450x588.png" alt="아휴 나몰라유? 나유 나! 맛의 대부 Baek이 추천하는 연유라떼!" />
            <a href="javascript:void(0)" class="btn" onclick="btn_paik()">자세히 보기</a>
          </div>
          <!-- <div class="swiper-slide">
            <img src="	https://www.ediya.com/images/coffee/lab_menu_gallery01.jpg" alt="신년 이디야의 다양한 이벤트들로 여러분들을 초대합니다!" />
            <a href="javascript:void(0)" class="btn" onclick="btn_edi()">자세히 보기</a>
          </div> -->
          <script type="text/javascript">
            function btn_mega() {
                window.location.href = "productInfo_Mega.jsp";
            }
            function btn_stb() {
                window.location.href = "productInfo_Starbucks.jsp";
            }
            function btn_paik() {
                window.location.href = "productInfo_Paik.jsp";
            }
            function btn_edi() {
                window.location.href = "reviewRegistration_kor.jsp";
            }
            </script>
        </div>
      </div>
      <div class="swiper-prev">
        <span class="material-icons">arrow_back</span>
      </div>
      <div class="swiper-next">
        <span class="material-icons">arrow_forward</span>
      </div>

    </div>
  </section>
  <footer>
    <div class="inner">

      <ul class="menu">
        <li><a href="javascript:void(0)" class="green">개인정보처리방침</a></li>
        <li><a href="javascript:void(0)">영상정보처리기기 운영관리 방침</a></li>
        <li><a href="javascript:void(0)">EZEN안산아카데미</a></li>
        <li><a href="javascript:void(0)">위치정보 이용약관</a></li>
        <li><a href="javascript:void(0)">윤리경영 핫라인</a></li>
      </ul>

      <div class="btn-group">
        <a href="https://github.com/javaLearner13" target="_blank" class="btn btn--white">Owen Kim</a>
        <a href="javascript:void(0)" class="btn btn--white">손하연</a>
        <a href="javascript:void(0)" class="btn btn--white">조형은</a>
      </div>


      <p class="copyright">
        &copy; <span class="this-year"></span> OTK Review Company. All Rights Reserved.
      </p>
    </div>
  </footer>


  <!--TO TOP BUTTON-->
  <div id="to-top">
    <div class="material-icons">arrow_upward</div>
  </div>

</body>
</html>