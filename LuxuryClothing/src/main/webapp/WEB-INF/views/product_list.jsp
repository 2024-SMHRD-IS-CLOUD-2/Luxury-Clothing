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

 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

	<style type="text/css">
		.hideme
		{
		    opacity:0;
		}
		
		.slider-range
		{
			max-width: 20%;
			margin-left: 40%;
		}
	</style>
</head>

<body>
    <!-- 복붙코드 jsp : header 불러오기 ! ***** -->
    <%@include file ="header.jsp" %>

	<form action="product_search.do">
		<!-- 여백용 공간 -->
		<div class = "content_box">	
			<div class = "search_box">
				<h3 class = "search_box">상품 검색</h3>
				    <select class = "search_box" name="rating">
				    	<option>전체 등급</option>
				    	<option>A</option>
				    	<option>B</option>
				    	<option>C</option>
				    	<option>D</option>
				    </select>
			    
			    <select class = "search_box" name="kind">
			    	<option>상품 종류</option>
			    	<option>모자</option>
			    	<option>상의</option>
			    	<option>하의</option>
			    	<option>악세서리</option>
			    </select>
			    
				<!-- 구매 희망가격 슬라이더 STR -->
				<div class="search_box">
				  <label for="amount">구매 희망가격(원)</label>
				  <input type="text" id="amount" name="amount">
				  <div>
				  	<div id="slider-range" class="slider-range" ></div>
				  </div>
				</div>
				<!-- 구매 희망가격 슬라이더 END -->
			    <input class = "search_box" type="text" id="searchInput" name="searchInput" placeholder="검색어를 입력하세요">
			    <button onclick="searchProducts()">검색</button>
			    <div id="searchResults"></div>
			</div>
	    </div>
	</form>
	

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
                        
                        
	                        <c:forEach var="result" items="${result}" varStatus="status">
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
	                                    <h4><c:out value="${result.prod_name}"/></h4>
	                                    <span><c:out value="${result.prod_price}"/></span>
	                                    <ul class="stars">
	                                        <li><c:out value="${result.prod_grade}"/></li>
	                                    </ul>
	                                </div>
	                            </div>
	                        </c:forEach>

                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Men Area Ends ***** -->
    
 	<script>
 	<!-- 구매 희망가격 슬라이더 STR -->
	  $( function() {
		  $( "#slider-range" ).slider({
		    range: true,
		    min: 0,
		    max: 5000000,
		    values: [ 0, 5000000 ],
		    step: 10000, // 증가 값 설정
		    slide: function( event, ui ) {
		      $( "#amount" ).val( ui.values[ 0 ] + " ~ " + ui.values[ 1 ] );
		    }
		  });
		  $( "#amount" ).val( $( "#slider-range" ).slider( "values", 0 ) +
		  " ~ " + $( "#slider-range" ).slider( "values", 1 ) );
		} );
	  
	  
	<!-- 검색기록 남겨두기 STR -->
	 $(document).ready(function() {
        let prod_grade = "${serch.prod_grade}";
        let prod_category = "${serch.prod_category}";
        let prod_priceMin = "${serch.prod_priceMin}";
        let prod_priceMax = "${serch.prod_priceMax}";
        let prod_name = "${serch.prod_name}";
		console.log(uid);
	 });   
	 
 	</script>
    

<!-- 복붙코드 jsp : footer 불러오기 ! ***** -->
<%@include file ="footer.jsp" %>

</body>
</html>