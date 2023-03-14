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
    <div class="inner">

<div class="sub-menu">
    <ul class="menu">
        <li><a href="#" onclick="login()" id="loginButton">로그인</a></li>
        <li><a href="#" onclick="logout()" id="logoutButton" style="display:none;">로그아웃</a></li>
        <li><a href="#" onclick="register()" id="registerButton">회원가입</a></li>
        <li><a href="#" onclick="reviewregister()" id="reviewRegistration">리뷰 등록</a></li>
        <li><a href="#" onclick="reviewlist()" id="reviewButton">작성한 리뷰 확인하기</a></li>
    </ul>

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
            <li><a href="index.jsp" class="logo"><span>오타쿠의</span> <br>믿고보는 리뷰</a></li>
        <li class="item">
          <div class="item__name">메뉴</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>브랜드</h4>
                  <ul>
                    <li><a href="http://localhost:8092/portfolio/pro_stb_info.jsp">스타벅스</a></li>
                    <li><a href="http://localhost:8092/portfolio/pro_mega_info.jsp">메가커피</a></li>
                    <li><a href="http://localhost:8092/portfolio/pro_paik_info.jsp">빽다방</a></li>
                  </ul>
                </li>
                <li>
                  <h4>믿고보는리뷰</h4>
                  <ul>
                    <li><a href="review.jsp">리뷰작성하기</a></li>
                    <li><a href="#">내가작성한리뷰확인하기</a></li>
                    <li><a href="#">실시간핫픽스 <span class="rhdtk">(공사중)</span></a></li>
                  </ul>
                </li>
                <li>
                  <h4>이벤트</h4>
                  <ul>
                    <li><a href="#">핫픽스 신뢰도 높은 후기!</a></li>
                  </ul>
                </li>
                <li>
                  <h4>OTK 소식</h4>
                  <ul>
                    <li>커피 프레스</li>
                    <li>푸어 오버</li>
                    <li>아이스 푸어 오버</li>
                    <li>커피 메이커</li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name">믿고보는리뷰</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>브랜드</h4>
                  <ul>
                    <li><a href="#">스타벅스</a></li>
                    <li><a href="#">메가커피</a></li>
                    <li><a href="#">빽다방</a></li>
                  </ul>
                </li>
                <li>
                  <h4>믿고보는리뷰</h4>
                  <ul>
                    <li><a href="#">리뷰작성하기</a></li>
                    <li><a href="#">내가작성한리뷰확인하기</a></li>
                    <li><a href="#">실시간핫픽스 <span class="rhdtk">(공사중)</span></a></li>
                  </ul>
                </li>
                <li>
                  <h4>이벤트</h4>
                  <ul>
                    <li><a href="#">핫픽스 신뢰도 높은 후기!</a></li>
                  </ul>
                </li>
                <li>
                  <h4>OTK 소식</h4>
                  <ul>
                    <li>커피 프레스</li>
                    <li>푸어 오버</li>
                    <li>아이스 푸어 오버</li>
                    <li>커피 메이커</li>
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
                    <li><a href="#">스타벅스</a></li>
                    <li><a href="#">메가커피</a></li>
                    <li><a href="#">빽다방</a></li>
                  </ul>
                </li>
                <li>
                  <h4>믿고보는리뷰</h4>
                  <ul>
                    <li><a href="#">리뷰작성하기</a></li>
                    <li><a href="#">내가작성한리뷰확인하기</a></li>
                    <li><a href="#">실시간핫픽스 <span class="rhdtk">(공사중)</span></a></li>
                  </ul>
                </li>
                <li>
                  <h4>이벤트</h4>
                  <ul>
                    <li><a href="#">핫픽스 신뢰도 높은 후기!</a></li>
                  </ul>
                </li>
                <li>
                  <h4>OTK 소식</h4>
                  <ul>
                    <li>커피 프레스</li>
                    <li>푸어 오버</li>
                    <li>아이스 푸어 오버</li>
                    <li>커피 메이커</li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name">OTK소식</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>브랜드</h4>
                  <ul>
                    <li><a href="#">스타벅스</a></li>
                    <li><a href="#">메가커피</a></li>
                    <li><a href="#">빽다방</a></li>
                  </ul>
                </li>
                <li>
                  <h4>믿고보는리뷰</h4>
                  <ul>
                    <li><a href="#">리뷰작성하기</a></li>
                    <li><a href="#">내가작성한리뷰확인하기</a></li>
                    <li><a href="#">실시간핫픽스 <span class="rhdtk">(공사중)</span></a></li>
                  </ul>
                </li>
                <li>
                  <h4>이벤트</h4>
                  <ul>
                    <li><a href="#">핫픽스 신뢰도 높은 후기!</a></li>
                  </ul>
                </li>
                <li>
                  <h4>OTK 소식</h4>
                  <ul>
                    <li>커피 프레스</li>
                    <li>푸어 오버</li>
                    <li>아이스 푸어 오버</li>
                    <li>커피 메이커</li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
      </ul>

    </div>
    </header>
<!-- 메인 페이지 -->
  <section class="notice">

    <!--NOTICE LINE-->
    <div class="notice-line">
      <div class="inner">

        <div class="inner__left">
          
              <div class="swiper-slide"><h2>공지사항</h2>
                <a href="javascript:void(0)"> 공휴일간 고객센터 휴무 예정</a>
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
          <h2>MENU</h2>
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
                window.location.href = "/portfolio/pro_mega_info.jsp";
            }
            function btn_stb() {
                window.location.href = "/portfolio/pro_stb_info.jsp";
            }
            function btn_paik() {
                window.location.href = "/portfolio/pro_paik_info.jsp";
            }
            function btn_edi() {
                window.location.href = "reviewRegistration.jsp";
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
        <a href="javascript:void(0)" class="btn btn--white">김종민</a>
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