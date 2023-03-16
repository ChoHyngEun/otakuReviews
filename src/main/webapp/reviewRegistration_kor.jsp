<!-- branch main -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- product 리뷰 등록 페이지 -->
<!-- 이 페이지에서 리뷰 내용을 입력하면 ProductServlet > ProductDAO를 거쳐 MySQL에 데이터가 전송됨 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰등록 페이지</title>
<link rel="stylesheet" href="css/reviewregistration.css">
</head>
<body>

<%
	String userName = (String)session.getAttribute("userName");  
%>          		
	
	<%
	/* if not signed in, send em back to index.jsp */
	if(userName==null){
		%>
		<script>
			alert("로그인 후 가능한 서비스입니다.");
			history.back();
		</script>
		<%
	}
	
	%>
	
	
	<div align=center>
	<!-- product 등록 후 ProductServlet으로 전송 -->
	<div class="login-box">
			
			<h2>리뷰 남기기</h2>
			
			<form action="<%=request.getContextPath()%>/product" method="post">
				
				<div class="user-box">
					<input type="text" name="userName" value=<%=userName %> readonly>
					<!-- <label>Your ID</label> -->
				</div>
				<div class="user-box">
					<input type="text" placeholder="Americano, Latte, Coldbrew" name="product_name">
					<label>상품명</label>
				</div>
				<div class="user-box">				
					<input type="text" placeholder="Starbucks, Mega, Paik" name="product_brand">
					<label>브랜드명</label>
				</div>
				<div class="user-box">
					<input type="text" placeholder="2.5" name="product_price">
					<label>가격</label>
				</div>
				
 				<div class="form-group">
					<p>별점</p>
					<div class="reviews-counter">
						<div class="rate">
							<input type="radio" id="star5" name="star" value="5" />
							<label for="star5" title="text">별 5개</label>
							<input type="radio" id="star4" name="star" value="4" />
							<label for="star4" title="text">별 4개</label>
							<input type="radio" id="star3" name="star" value="3" />
							<label for="star3" title="text">별 3개</label>
							<input type="radio" id="star2" name="star" value="2" />
							<label for="star2" title="text">별 2개</label>
							<input type="radio" id="star1" name="star" value="1" />
							<label for="star1" title="text">별 1개</label>
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<br>
					<p>후기를 남기세요</p>
					<textarea class="form-control" placeholder="So Tasty!!" rows="10" cols="30" name="product_review"></textarea>
				</div>
				
				<a href="#">
					<span></span>
					<span></span>
					<span></span>
					<span></span>
					<input type="submit" value="Submit Review" id="submit_review">
				</a>
				
			</form>
		</div>
	</div>
	
</body>
</html>