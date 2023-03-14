<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- product 리뷰 등록 페이지 -->
<!-- 이 페이지에서 리뷰 내용을 입력하면 ProductServlet > ProductDAO를 거쳐 MySQL에 데이터가 전송됨 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feeling Salty?</title>
<link rel="stylesheet" href="css/reviewregistration.css">
</head>
<body>
	<div align=center>
		<h1>Feeling salty?</h1>
		<i>leave a review on any product</i>
		<i>show'em who the real boss is</i><br><hr><br><br>
		<!-- product 등록 후 ProductServlet으로 전송 -->
		<div class="login-box">
			<h2>reviewRegistration</h2>
			<form action="<%=request.getContextPath()%>/product" method="post">
				<div class="user-box">
					<input type="text"  name="product_name" required="">
					<label>Product Name</label>
				</div>
				<div class="user-box">				
					<input type="text"  name="product_brand" required="">
					<label>Product Brand</label>
				</div>
				<p class="mb-20">There are no reviews yet.</p>
				<div class="form-group">
					<p>Your rating</p>
					<div class="reviews-counter">
						<div class="rate">
							<input type="radio" id="star5" name="rate" value="5" />
							<label for="star5" title="text">5 stars</label>
							<input type="radio" id="star4" name="rate" value="4" />
							<label for="star4" title="text">4 stars</label>
							<input type="radio" id="star3" name="rate" value="3" />
							<label for="star3" title="text">3 stars</label>
							<input type="radio" id="star2" name="rate" value="2" />
							<label for="star2" title="text">2 stars</label>
							<input type="radio" id="star1" name="rate" value="1" />
							<label for="star1" title="text">1 star</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label>Your message</label>
					<textarea class="form-control" rows="6" cols="30"></textarea>
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