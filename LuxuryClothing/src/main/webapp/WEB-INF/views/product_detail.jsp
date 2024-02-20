<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 상세 정보</title>
    <!-- 필요한 CSS 파일들을 여기에 추가 -->
    <link rel="stylesheet" href="${path}/resources/assets/css/styles.css">
</head>
<body>

    <%@include file="header.jsp"%>

    <div class="container">
        <!-- 상품 상세 정보 표시 -->
        <h1>${product.prod_name}</h1>
        <p>가격: ${product.prod_price}</p>
        <p>등급: ${product.prod_grade}</p>
        <p>설명: ${product.prod_description}</p>
        <!-- 다른 상세 정보 표시 -->
    </div>

    <%@include file="footer.jsp"%>

</body>
</html>
