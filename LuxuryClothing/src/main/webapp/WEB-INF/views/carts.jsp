<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link
    href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
    rel="stylesheet">

<title>장바구니</title>

<!-- 외부 CSS 파일 연결 -->
<link rel="stylesheet" href="${path}/resources/assets/css/shopping_basket.css">

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
<!--

TemplateMo 571 Hexashop

https://templatemo.com/tm-571-hexashop

-->
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
                    <div id="cart-container"></div>
                    <!-- 주문 및 가격 정보 -->
                    <div class="form-container">
                        <div class="order-summary">
                            <div>총 ?개의 상품 금액</div>
                            <div>배송비</div>
                            <div>합계</div>
                        </div>
                        <div>
                            <div>1,000,000원</div>
                            <div>0원</div>
                            <div>1,000,000원</div>
                        </div>
                    </div>
                    <!-- 상품 주문 버튼 -->
                    <div class="form-container">
                        <button type="button" class="delete-button"
                            onclick="deleteSelectedProducts()">선택 상품 삭제</button>
                        <div>
                            <button class="order-button">선택 상품 주문</button>
                            <button class="order-button">전체 상품 주문</button>
                        </div>
                        <!-- 장바구니 비어있을 때 메시지 -->
                        <p id="emptyCartMessage" class="cart-message">장바구니에 상품이 없습니다.</p>
                    </div>
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
        updateCart();
    </script>

</body>

</html>
