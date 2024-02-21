<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 상세 조회 페이지</title>
    <link rel="stylesheet" href="${path}/resources/assets/css/product_detail.css">
    <style type="text/css">
    @charset "UTF-8";
.container {
    display: flex;
    width: 1000px;
    margin: 0 auto;
}

.product-image {
    width: 500px;
    text-align: center;
}

.product-image img {
    width: 100%;
    height: auto;
}

.product-details {
    width: 500px;
    padding: 20px;
}

.product-details h1 {
    color: black;
}

.product-details hr {
    border: 1px solid black;
    margin: 20px 0;
}

.product-info div {
    display: flex;
    justify-content: space-between;
    margin-bottom: 10px;
}

.condition div {
    display: flex;
}

.buttons {
    text-align: center;
}

.buttons button {
    width: calc((100% - 20px) / 3);
    margin-right: 20px;
    background-color: black;
    color: white;
    border: none;
    padding: 10px 0;
}

.buttons button:last-child {
    margin-right: 0;
}
    
    </style>
</head>
<body>
    <div class="container">
        <div class="product-image">
            <!-- 상품 이미지 -->
            <img src="product_image.jpg" alt="Product Image">
        </div>
        <div class="product-details">
            <h1>상품명</h1>
            <h1>가격</h1>
            <hr>
            <div class="product-info">
                <div>
                    <span>상품재고</span>
                    <span>1개</span>
                </div>
                <div>
                    <span>원산지</span>
                    <span>FANCE</span>
                </div>
                <div>
                    <span>배송지</span>
                    <span>0원 / 주문시 결제 (선결제)</span>
                </div>
                <div>
                    <span>외부상태</span>
                    <div class="condition">
                        <span>신품</span>
                        <span>미사용</span>
                    </div>
                </div>
                <div>
                    <span>내부상태</span>
                    <span>신품</span>
                    <span>미사용</span>
                </div>
                <div>
                    <span>부속품</span>
                    <span>더스크백, 케이스</span>
                </div>
                <div>
                    <span>색상</span>
                    <span>블랙</span>
                </div>
            </div>
            <hr>
            <div class="buttons">
                <button class="buy-now">바로 구매</button>
                <button class="add-to-cart">장바구니</button>
                <button class="add-to-wishlist">찜하기</button>
            </div>
        </div>
    </div>
</body>
</html>
