<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/font-awesome.css">
    <link rel="stylesheet" href="${path}/resources/assets/css/templatemo-hexashop.css">
    <link rel="stylesheet" href="${path}/resources/assets/css/owl-carousel.css">
    <link rel="stylesheet" href="${path}/resources/assets/css/lightbox.css">
</head>
<body>
   <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->

                        <a href="main.do" class="logo" >

                            <img src="${path}/resources/assets/images/logo.png">
                        </a>
                        
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <!-- <li class="scroll-to-section"><a href="#top" class="active">메인</a></li> -->
                            <!-- <li class="scroll-to-section"><a href="#men">남성의류</a></li>
                            <li class="scroll-to-section"><a href="#women">여성의류</a></li> -->
                            <li class="submenu">
                                <a class="list" href="javascript:;">위탁서비스</a>
                                <ul>
                                    <li><a href="consignment.html">위탁안내 사항</a></li>
                                    <li><a href="consignment_apply.html">위탁 신청</a></li>
                                </ul>
                            
                            </li>
                            <li class="submenu">
                                <a href="javascript:;">상품목록</a>
                                <ul>
                                    <li><a href="product_list.do">전체</a></li>
                                    <li><a href="#">모자</a></li>
                                    <li><a href="#">상의</a></li>
                                    <li><a href="#">하의</a></li>
                                    <li><a href="#">신발</a></li>
                                    <li><a href="#">악세서리</a></li>
                                </ul>
                            </li>
                            <c:if test="${result.user_id != null}">
		                            <li class="submenu">
		                                <a href="javascript:;">마이페이지</a>
		                                <ul>
		                                    <li><a href="#">회원정보수정</a></li>
		                                    <li><a href="#">위탁상품관리</a></li>
		                                    <li><a href="#">주문내역조회</a></li>
		                                    <li><a rel="nofollow" href="https://templatemo.com/page/4" target="_blank">입금 조회 및 환불</a></li>
		                                    <li class="scroll-to-section"><a href="#explore">장바구니</a></li>
		                                </ul>
		                            </li>
		                            <li class="submenu2">
		                            	<a href="#explore">장바구니</a>
		                            </li>
		                    </c:if>
		                    <c:if test="${user_result == null}">
	                            <li class="submenu3">
	                            	<a href="login.do">로그인</a>
	                            </li>
	                            <li class="submenu3">
	                            	<a href="#">/</a>
	                            </li>
	                            <li class="submenu3">
	                            	<a href="joinpage.do">회원가입</a>
	                            </li>
	                        </c:if>
	                        <li class="scroll-to-section"><a href="#">고객센터</a></li>
                        </ul>        
                        <a class='menu-trigger'>
                        
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->
    

</body>
</html>