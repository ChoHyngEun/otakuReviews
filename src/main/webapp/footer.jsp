<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <link rel="stylesheet" href="./css/main.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<script defer src="./js/main.js"></script>
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
  <div class="material-icons" onclick="scrollToTop()">arrow_upward</div>
</div>

<script>
function scrollToTop() {
  window.scrollTo({ top: 0, behavior: 'smooth' });
}
</script>

</body>
</html>