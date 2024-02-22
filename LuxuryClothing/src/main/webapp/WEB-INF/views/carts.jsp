<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>장바구니</title>
<!-- 외부 CSS 파일 연결 -->
<link rel="stylesheet"
	href="${path}/resources/assets/css/shopping_basket.css">
<!-- Additional CSS Files -->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/css/font-awesome.css">
<link rel="stylesheet"
	href="${path}/resources/assets/css/templatemo-hexashop.css">
<link rel="stylesheet"
	href="${path}/resources/assets/css/owl-carousel.css">
<link rel="stylesheet" href="${path}/resources/assets/css/lightbox.css">
</head>
<body>
	<!-- ***** Preloader Start ***** -->
	<div id="preloader">
		<div class="jumper">
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>
	<!-- ***** Preloader End ***** -->
	<%@include file="header.jsp"%>
	<!-- ***** Contact Area Starts ***** -->
	<div class="contact-us">
		<div class="container">
			<div class="row justify-content-center">
				<!-- 장바구니 기능 부분 -->
				<div class="col-lg-12">
					<div class="section-heading text-center">
						<h2>장바구니</h2>
					</div>
					<hr class="border-line">
					<!-- 장바구니 내용 -->
					<div id="cart-container">
						<!-- 여기에 장바구니 내용을 표시할 것입니다 -->
						<form id="cartForm">
							<div class="product-list">
								<c:forEach var="product" items="${cartItems}">
									<div class="product-item">
										<div class="product-info">
											<div class="product-checkbox-container">
												<input type="checkbox" class="product-checkbox">
											</div>
											<div class="product-details">
												<div class="product-name">${product.prod_name}</div>
												<div class="product-price">${product.prod_price}원</div>
												<div class="product-desc">${product.prod_desc}</div>
												<div class="product-category">${product.prod_category}</div>
												<div class="product-option">${product.prod_option}</div>
												<div class="product-grade">${product.prod_grade}</div>
												<div class="product-yn">${product.prod_yn}</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</form>
					</div>
					<!-- 장바구니 합계 -->
					<div class="total-price">
						<h4>
							장바구니 합계: <span id="totalPrice">${totalPrice}</span>원
						</h4>
					</div>
					<!-- 장바구니가 비어있을 때 메시지 -->
					<c:if test="${empty cartItems}">
						<div class="cart-message text-center">장바구니에 상품이 없습니다.</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<!-- ***** Contact Area Ends ***** -->
	<%@include file="footer.jsp"%>
	<!-- jQuery -->
	<script src="${path}/resources/assets/js/jquery-2.1.0.min.js"></script>
	<!-- Bootstrap -->
	<script src="${path}/resources/assets/js/popper.js"></script>
	<script src="${path}/resources/assets/js/bootstrap.min.js"></script>
	<!-- Plugins -->
	<script src="${path}/resources/assets/js/owl-carousel.js"></script>
	<script src="${path}/resources/assets/js/accordions.js"></script>
	<script src="${path}/resources/assets/js/datepicker.js"></script>
	<script src="${path}/resources/assets/js/scrollreveal.min.js"></script>
	<script src="${path}/resources/assets/js/waypoints.min.js"></script>
	<script src="${path}/resources/assets/js/jquery.counterup.min.js"></script>
	<script src="${path}/resources/assets/js/imgfix.min.js"></script>
	<script src="${path}/resources/assets/js/slick.js"></script>
	<script src="${path}/resources/assets/js/lightbox.js"></script>
	<script src="${path}/resources/assets/js/isotope.js"></script>
	<!-- Global Init -->
	<script src="${path}/resources/assets/js/custom.js"></script>
	<!-- 스크립트 코드 -->
	<script>
		// 페이지 로딩시 장바구니 상태 업데이트
		// updateCart();
		// 페이지 로딩시 장바구니 상태 업데이트
		$(document).ready(function() {
			// 페이지 로딩시 총 가격 계산
			updateTotalPrice();

			// 각 상품 체크박스의 변경 이벤트를 감지하여 합계 가격을 계산
			$(".product-checkbox").change(updateTotalPrice);
		});

		function updateTotalPrice() {
			var totalPrice = 0;
			$(".product-checkbox:checked").each(
					function() {
						// 선택된 상품의 가격을 가져오기
						var price = parseInt($(this).closest(".product-item")
								.find(".product-price").text().trim().replace(
										"원", ""));
						// 가져온 가격이 숫자인지 확인하고 숫자가 아니면 무시
						if (!isNaN(price)) {
							totalPrice += price;
						}
					});
			// 합산된 가격을 화면에 출력
			$("#totalPrice").text(totalPrice);
		}
	</script>
</body>
</html>
