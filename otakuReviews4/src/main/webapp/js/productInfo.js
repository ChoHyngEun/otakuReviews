$(document).ready(function() {
  // 첫 번째 이미지 슬라이드 초기화
  var slideIndex1 = 1;
  showSlides1(slideIndex1);

  // 첫 번째 이미지 슬라이드 이전/다음 버튼 이벤트 처리
  $('.prev1').click(function() {
    slideIndex1--;
    showSlides1(slideIndex1);
  });
  $('.next1').click(function() {
    slideIndex1++;
    showSlides1(slideIndex1);
  });

  // 두 번째 이미지 슬라이드 초기화
  var slideIndex2 = 1;
  showSlides2(slideIndex2);

  // 두 번째 이미지 슬라이드 이전/다음 버튼 이벤트 처리
  $('.prev2').click(function() {
    slideIndex2--;
    showSlides2(slideIndex2);
  });
  $('.next2').click(function() {
    slideIndex2++;
    showSlides2(slideIndex2);
  });

  // 첫 번째 이미지 슬라이드 표시 함수
  function showSlides1(n) {
    var i;
    var slides = $('.pro_img1 img');
    if (n > slides.length) {
      slideIndex1 = 1;
    }
    if (n < 1) {
      slideIndex1 = slides.length;
    }
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = 'none';
    }
    slides[slideIndex1-1].style.display = 'block';
  }

  // 두 번째 이미지 슬라이드 표시 함수
  function showSlides2(n) {
    var i;
    var slides = $('.pro_img2 img');
    if (n > slides.length) {
      slideIndex2 = 1;
    }
    if (n < 1) {
      slideIndex2 = slides.length;
    }
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = 'none';
    }
    slides[slideIndex2-1].style.display = 'block';
  }
});