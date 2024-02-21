<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%@ page import="com.smhrd.products.model.ProductsDTO"%>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 상세 정보</title>

<!-- 필요한 CSS 파일들을 여기에 추가 -->

<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/css/font-awesome.css">

<link rel="stylesheet"
	href="${path}/resources/assets/css/templatemo-hexashop.css">

<link rel="stylesheet"
	href="${path}/resources/assets/css/owl-carousel.css">

<link rel="stylesheet" href="${path}/resources/assets/css/lightbox.css">

<link rel="stylesheet"
	href="${path}/resources/assets/css/product_detail.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>

<body>


	<div class="container">
		<div class="product-image">
			<!-- 상품 이미지 -->
			<img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTA3MDhfODYg%2FMDAxNTYyNTc0NDcxOTM1.OjDgmUrFi8rByy6OSqCd2GPI0aUk8kxXqH4n5GDryxwg.jB_Kfi8ti-un99vALglDU2TFWU_5709C4o721FeGe8Ug.JPEG.msinvestment%2Fshutterstock_1320931688.jpg&type=ff332_332"
				alt="Product Image">
		</div>
		<div class="product-details">
			<%-- <c:set var="product" value="<%=request.getAttribute("product_detail")%>"></c:set> --%>
			<%-- <% 
        	ProductsDTO dto = (ProductsDTO)(request.getAttribute("prod_detail")); 
        	
        	String prod_name = dto.getProd_name();
        	String prod_price = dto.getProd_price();
        	String prod_category = dto.getProd_category();
        	String prod_desc = dto.getProd_desc();
        	String prod_option = dto.getProd_option();
        	String prod_status = dto.getProd_status();
        	
        	%> --%>
			<!-- 형변환 필요 object type이기 때문에 -->
			<c:set var="prod" value="${sessionScope.prod_detail}" />

			<h1>${prod.prod_name}</h1>
			<%-- <h1><%= prod_name %></h1>
            <h3><%= prod_price %></h1> --%>
			<hr>

			<div>

				<div style="margin-bottom: 20px;">
					<span style="font-weight: bold;">가격 :</span> <span>${prod.prod_price}</span>
				</div>

				<div style="margin-bottom: 20px;">
					<span style="font-weight: bold;">카테고리 :</span> <span>${prod.prod_category}</span>
				</div>

				<div style="margin-bottom: 20px;">
					<span style="font-weight: bold;">상세 정보 :</span> <span>${prod.prod_option}</span>
				</div style="margin-bottom: 20px;">

				<div style="margin-bottom: 20px;">
					<span style="font-weight: bold;">제품 상태 :</span> <span>${prod.prod_desc}</span>
				</div>

				<div style="margin-bottom: 20px;">
					<span style="font-weight: bold;">외부상태</span> <br>
					<div>
						<span>신품/</span> <span>미사용</span>
					</div>
				</div>

				<div style="margin-bottom: 20px;">
					<span style="font-weight: bold;">내부상태</span> <br>
					<div>
						<span>신품/</span> <span>미사용</span>
					</div>
				</div style="margin-bottom: 20px;">

				<div>
					<span style="font-weight: bold;">부속품</span> <span>더스크백, 케이스</span>
				</div>

				<div style="margin-bottom: 20px;">
					<span style="font-weight: bold;">색상</span> <span>블랙</span>
				</div>

			</div>
			<hr>
			<div class="product-details" style="margin-left: 400px;">
				<span style="font-weight: bold;">총 합계금액 :</span> <span
					style="font-weight: bold;">${prod.prod_price} 원</span>
			</div>


			<hr>
			<div style="position:relative; left: 300px;" >
			<button type="button" onclick="directPurchase()">바로 구매</button><br>
			<button type="button" onclick="addToCart()">장바구니</button>
			<button type="button" onclick="addToWishlist()">찜하기</button>
			</div>
		</div>
	</div>


	<%@include file="footer.jsp"%>

	<script>
		function directPurchase() {
			// 바로 구매 버튼 클릭 시 이동할 페이지의 URL
			var purchaseURL = "구매페이지의 URL";
			window.location.href = purchaseURL;
		}

		function addToCart() {
			// 장바구니 버튼 클릭 시 이동할 페이지의 URL
			var cartURL = "장바구니페이지의 URL";
			window.location.href = cartURL;
		}

		function addToWishlist() {
			// 찜하기 버튼 클릭 시 이동할 페이지의 URL
			var wishlistURL = "찜하기페이지의 URL";
			window.location.href = wishlistURL;
		}
	</script>


</body>
</html>
