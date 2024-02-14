<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 복붙코드 jsp : header 불러오기 ! ***** -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 복붙코드 제이쿼리 : 제이쿼리 불러오기 ! ***** -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

	<style type="text/css">
		.hideme
		{
		    opacity:0;
		}
	</style>
</head>

<body>
    <!-- 복붙코드 jsp : header 불러오기 ! ***** -->
    <%@include file ="header.jsp" %>

	<!-- 여백용 공간 -->
	<div class = "content_box">	
		<div class = "search_box">
			<h3 class = "search_box">상품 검색</h3>
		    <select class = "search_box">
		    	<option>전체등급</option>
		    	<option>A</option>
		    	<option>B</option>
		    	<option>C</option>
		    	<option>D</option>
		    </select>
		    
		    <select class = "search_box">
		    	<option>상품 종류</option>
		    	<option>모자</option>
		    	<option>상의</option>
		    	<option>하의</option>
		    	<option>악세서리</option>
		    </select>
		    
		    <input type="text" id="searchInput" placeholder="검색어를 입력하세요">
		    <button onclick="searchProducts()">검색</button>
		    <div id="searchResults"></div>
		</div>
    </div>
	

    <!-- ***** Men Area Starts ***** -->
    <section class="section" id="men">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>탑텐?</h2>
                        <span>개쩌는 인기상품 10가지를 만나보세요</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="men-item-carousel">
                        <div class="owl-men-item owl-carousel">
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-eye"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="${path}/resources/assets/images/men-01.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>상품이름1</h4>
                                    <span>10,000</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-eye"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="${path}/resources/assets/images/men-02.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>상품이름2</h4>
                                    <span>20.000</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-eye"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="${path}/resources/assets/images/men-03.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>상품이름3</h4>
                                    <span>30.000</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-eye"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="${path}/resources/assets/images/men-01.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>상품이름4</h4>
                                    <span>40.000</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-eye"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="${path}/resources/assets/images/men-01.jpg" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>상품이름5</h4>
                                    <span>40.000</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Men Area Ends ***** -->
    
<div id="container">
    <div class="hideme">Fade In</div>
    <div class="hideme">Fade In</div>
    <div class="hideme">Fade In</div>
    <div class="hideme">Fade In</div>
    <div class="hideme">Fade In</div>
</div>

<script type="text/javascript">
$(document).ready(function() {
    /* 1 */
    $(window).scroll( function(){
        /* 2 */
        $('.hideme').each( function(i){
            var bottom_of_object = $(this).offset().top + $(this).outerHeight();
            var bottom_of_window = $(window).scrollTop() + $(window).height();
            /* 3 */
            if( bottom_of_window > bottom_of_object/2 ){
                $(this).animate({'opacity':'1'},500);
            }
        }); 
    });
});

</script>

<!-- 복붙코드 jsp : footer 불러오기 ! ***** -->
<%@include file ="footer.jsp" %>

</body>
</html>