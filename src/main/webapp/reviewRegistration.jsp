<!-- branch main -->
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
<script>
function updateProduct_name() {
  var selectBox = document.querySelector(".product_name");
  var selectedOption = selectBox.options[selectBox.selectedIndex].value;
  if (selectedOption === "Americano") {
    document.querySelector("#selected_product").value = "Americano";
  }else if (selectedOption === "Latte") {
    document.querySelector("#selected_product").value = "Latte";
  } else if (selectedOption === "Coldbrew") {
	    document.querySelector("#selected_product").value = "Coldbrew";
  }else {
    document.querySelector("#selected_product").value = "";
  }
}
function updateProduct_brand() {
	  var selectBox = document.querySelector(".product_brand");
	  var selectedOption = selectBox.options[selectBox.selectedIndex].value;
	  if (selectedOption === "Starbucks") {
	    document.querySelector("#selected_brand").value = "Starbucks";
	  }else if (selectedOption === "Mega") {
	    document.querySelector("#selected_brand").value = "Mega";
	  } else if (selectedOption === "Paik") {
		    document.querySelector("#selected_brand").value = "Paik";
	  }else {
	    document.querySelector("#selected_brand").value = "";
	  }
	}
</script>
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
			alert("please sign in first!");
			history.back();
		</script>
		<%
	}
	
	%>
	
	
	<div align=center>
	<!-- product 등록 후 ProductServlet으로 전송 -->
	<div class="login-box">
			
			<h2>Leave a Review</h2>
			
			<form action="<%=request.getContextPath()%>/product" method="post">
				
				<div class="user-box">
					<input type="text" name="userName" value=<%=userName %> readonly>
					<!-- <label>Your ID</label> -->
				</div>
				<div class="user-box">
				  <select name="product_name" class="product_name" onchange="updateProduct_name()">
				  	<option value="0">-- select --</option>
					<option value="Americano">Americano</option>
					<option value="Latte">Latte</option>
					<option value="Coldbrew">Coldbrew</option>
				  </select>
					<input type="text" placeholder="Americano, Latte, Coldbrew" name="product_name" id="selected_product" >
				  <label>Product Name</label>

					
				</div>
				
				<div class="user-box">				
				  <select class="product_brand" onchange="updateProduct_brand()">
				    <option value="0">-- select --</option>
					<option value="Starbucks">Starbucks</option>
					<option value="Mega">Mega</option>
					<option value="Paik">Paik</option>
				  </select>
					<input type="text" placeholder="Starbucks, Mega, Paik" name="product_brand"  id="selected_brand" >
					<label>Product Brand</label>
					
				</div>
				<div class="user-box">
					<input type="text" placeholder="2.5" name="product_price">
					<label>Product Price</label>
				</div>
				
 				<div class="form-group">
					<p>Your Rating</p>
					<div class="reviews-counter">
						<div class="rate">
							<input type="radio" id="star5" name="star" value="5" />
							<label for="star5" title="text">5 stars</label>
							<input type="radio" id="star4" name="star" value="4" />
							<label for="star4" title="text">4 stars</label>
							<input type="radio" id="star3" name="star" value="3" />
							<label for="star3" title="text">3 stars</label>
							<input type="radio" id="star2" name="star" value="2" />
							<label for="star2" title="text">2 stars</label>
							<input type="radio" id="star1" name="star" value="1" />
							<label for="star1" title="text">1 star</label>
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<br>
					<p>Leave a Comment Below</p>
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