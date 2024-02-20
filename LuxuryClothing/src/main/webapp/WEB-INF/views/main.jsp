
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html lang="en">

<head>
<meta charset="UTF-8">
<title>윈도우이름1김하늘</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
	
	   <style>
        /* slider__wrap */
        .slider__wrap {
            width: 100%;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .slider__img {
            position: relative;
            width: 800px;
            height: 450px;
            overflow: hidden;
        }
        .slider {
            position: absolute;
            left: 0;
            top: 0;
            transition: all 0.4s;
        }
        .slider::before {
            position: absolute;
            left: 5px;
            top: 5px;
            background: rgba(0, 0, 0, 0.4);
            color: #fff;
            padding: 5px 10px;
        }
        
		/*         
		.slider:nth-child(1)::before {content: '이미지1';}
        .slider:nth-child(2)::before {content: '이미지2';}
        .slider:nth-child(3)::before {content: '이미지3';}
        .slider:nth-child(4)::before {content: '이미지4';}
        .slider:nth-child(5)::before {content: '이미지5';}
        .slider:nth-child(1) {z-index: 5;}
        .slider:nth-child(2) {z-index: 4;}
        .slider:nth-child(3) {z-index: 3;}
        .slider:nth-child(4) {z-index: 2;}
        .slider:nth-child(5) {z-index: 1;} 
        */
    </style>
</head>

<body>


	<!-- ***** header 불러오기 ! ***** -->
	<%@include file="header.jsp"%>

	<!-- ***** Main Banner Area Start ***** -->
<%-- 	<div class="main-banner" id="top">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6">
					<div class="left-content">
						<div class="thumb">
							<div class="inner-content">
								<h4>구희철 바보</h4>
								<span>구희철 멍청이 &amp; 하늘이가 젤착해</span>
								<div class="main-border-button">
									<a href="#">클릭하기</a>
								</div>
							</div>
							<img src="${path}/resources/assets/images/left-banner-image.jpg"
								alt="">
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="right-content">
						<div class="row">
							<div class="col-lg-6">
								<div class="right-first-image">
									<div class="thumb">
										<div class="inner-content">
											<h4>문성진</h4>
											<span>여자보다 유희왕이 더 좋지</span>
										</div>
										<div class="hover-content">
											<div class="inner">
												<h4>문성진바보</h4>
												<p>바보바보바보바보</p>
												<div class="main-border-button">
													<a href="#">클릭하기</a>
												</div>
											</div>
										</div>
										<img
											src="${path}/resources/assets/images/baner-right-image-01.jpg">
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="right-first-image">
									<div class="thumb">
										<div class="inner-content">
											<h4>전석균</h4>
											<span>석균이메ㅗㄹㅇ</span>
										</div>
										<div class="hover-content">
											<div class="inner">
												<h4>전석균</h4>
												<p>석균이 메롱</p>
												<div class="main-border-button">
													<a href="#">클릭하기</a>
												</div>
											</div>
										</div>
										<img
											src="${path}/resources/assets/images/baner-right-image-02.jpg">
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="right-first-image">
									<div class="thumb">
										<div class="inner-content">
											<h4>전송민</h4>
											<span>울지마세요</span>
										</div>
										<div class="hover-content">
											<div class="inner">
												<h4>전송민</h4>
												<p>배가고파요</p>
												<div class="main-border-button">
													<a href="#">클릭하기</a>
												</div>
											</div>
										</div>
										<img
											src="${path}/resources/assets/images/baner-right-image-03.jpg">
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="right-first-image">
									<div class="thumb">
										<div class="inner-content">
											<h4>우리조파이팅</h4>
											<span>할수이따</span>
										</div>
										<div class="hover-content">
											<div class="inner">
												<h4>울지마</h4>
												<p>여기서 꺾이면 허접임</p>
												<div class="main-border-button">
													<a href="#">클릭하기</a>
												</div>
											</div>
										</div>
										<img
											src="${path}/resources/assets/images/baner-right-image-04.jpg">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> --%>
	
	<main id="main">
	    <div class="slider__wrap">
	        <div class="slider__img">
	            <div class="slider"><img src="${path}/resources/assets/images/instagram-01.jpg" ></div>
	            <div class="slider"><img src="${path}/resources/assets/images/instagram-02.jpg" ></div>
	            <div class="slider"><img src="${path}/resources/assets/images/instagram-03.jpg" ></div>
	            <div class="slider"><img src="${path}/resources/assets/images/instagram-04.jpg" ></div>
	            <div class="slider"><img src="${path}/resources/assets/images/instagram-05.jpg" ></div>
	        </div>
	    </div>
	</main>
	<!-- ***** Main Banner Area End ***** -->
	
	<script>
        // 선택자
        const sliderWrap = document.querySelector(".slider__wrap");
        const sliderImg = sliderWrap.querySelector(".slider__img");
        const slider = sliderWrap.querySelectorAll(".slider");

        let currentIndex = 0;               // 현재 보이는 이미지
        let sliderCount = slider.length;    // 이미지 갯수
        let sliderInterval = 3000;          // 이미지 변경 간격 시간
    </script>

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
					
						<c:forEach var="arr" items="${product_result}" varStatus="status">
							<div class="item">
								<div class="thumb">
									<div class="hover-content">
										<ul>
											<li><a href="#"><i class="fa fa-eye"></i></a></li>
											<li><a href="#"><i class="fa fa-star"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<a href="#?prod_id=${arr.prod_id}">
										<img src="${path}/resources/assets/images/products/${arr.file_name}" alt="이미지 준비 중">
									</a>
								</div>

								<div class="down-content">
									<h4>${arr.prod_name}</h4>
									<span>${arr.prod_grade} ${arr.prod_price}</span>
									<ul class="stars">
										<li><i class="fa fa-star"></i></li>
										<li><i class="fa fa-star"></i></li>
										<li><i class="fa fa-star"></i></li>
										<li><i class="fa fa-star"></i></li>
										<li><i class="fa fa-star"></i></li>
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

	<!-- ***** Women Area Starts ***** -->
	<section class="section" id="women">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="section-heading">
					<h2>리스트2</h2>
					<span>여기에 잘 팔리는 상품들을 한 번 넣어봅시다.</span>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="women-item-carousel">
					<div class="owl-women-item owl-carousel">
						<div class="item">
							<div class="thumb">
								<div class="hover-content">
									<ul>
										<li><a href="single-product.html"><i
												class="fa fa-eye"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-star"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<img src="${path}/resources/assets/images/women-01.jpg" alt="">
							</div>
							<div class="down-content">
								<h4>상품리스트1</h4>
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
										<li><a href="single-product.html"><i
												class="fa fa-eye"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-star"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<img src="${path}/resources/assets/images/women-02.jpg" alt="">
							</div>
							<div class="down-content">
								<h4>상품리스트2</h4>
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
										<li><a href="single-product.html"><i
												class="fa fa-eye"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-star"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<img src="${path}/resources/assets/images/women-03.jpg" alt="">
							</div>
							<div class="down-content">
								<h4>상품리스트3</h4>
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
										<li><a href="single-product.html"><i
												class="fa fa-eye"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-star"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<img src="${path}/resources/assets/images/women-01.jpg" alt="">
							</div>
							<div class="down-content">
								<h4>상품리스트4</h4>
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
	<!-- ***** Women Area Ends ***** -->

	<!-- ***** Kids Area Starts ***** -->
	<section class="section" id="kids">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="section-heading">
					<h2>여기엔 또 멀 넣을까?</h2>
					<span>여기엔 또 어떤걸 넣어볼까요?</span>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="kid-item-carousel">
					<div class="owl-kid-item owl-carousel">
						<div class="item">
							<div class="thumb">
								<div class="hover-content">
									<ul>
										<li><a href="single-product.html"><i
												class="fa fa-eye"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-star"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<img src="${path}/resources/assets/images/kid-01.jpg" alt="">
							</div>
							<div class="down-content">
								<h4>상품리스트1</h4>
								<span>10.000</span>
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
										<li><a href="single-product.html"><i
												class="fa fa-eye"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-star"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<img src="${path}/resources/assets/images/kid-02.jpg" alt="">
							</div>
							<div class="down-content">
								<h4>상품리스트2</h4>
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
										<li><a href="single-product.html"><i
												class="fa fa-eye"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-star"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<img src="${path}/resources/assets/images/kid-03.jpg" alt="">
							</div>
							<div class="down-content">
								<h4>상품리스트3</h4>
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
										<li><a href="single-product.html"><i
												class="fa fa-eye"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-star"></i></a></li>
										<li><a href="single-product.html"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<img src="${path}/resources/assets/images/kid-01.jpg" alt="">
							</div>
							<div class="down-content">
								<h4>상품리스트4</h4>
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
	<!-- ***** Kids Area Ends ***** -->



	<!-- ***** Subscribe Area Starts ***** -->
	<div class="subscribe">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="section-heading">
						<h2>By Subscribing To Our Newsletter You Can Get 30% Off</h2>
						<span>Details to details is what makes Hexashop different
							from the other themes.</span>
					</div>
					<form id="subscribe" action="" method="get">
						<div class="row">
							<div class="col-lg-5">
								<fieldset>
									<input name="name" type="text" id="name"
										placeholder="Your Name" required="">
								</fieldset>
							</div>
							<div class="col-lg-5">
								<fieldset>
									<input name="email" type="text" id="email"
										pattern="[^ @]*@[^ @]*" placeholder="Your Email Address"
										required="">
								</fieldset>
							</div>
							<div class="col-lg-2">
								<fieldset>
									<button type="submit" id="form-submit" class="main-dark-button">
										<i class="fa fa-paper-plane"></i>
									</button>
								</fieldset>
							</div>
						</div>
					</form>
				</div>
				<div class="col-lg-4">
					<div class="row">
						<div class="col-6">
							<ul>
								<li>Store Location:<br>
								<span>Sunny Isles Beach, FL 33160, United States</span></li>
								<li>Phone:<br>
								<span>010-020-0340</span></li>
								<li>Office Location:<br>
								<span>North Miami Beach</span></li>
							</ul>
						</div>
						<div class="col-6">
							<ul>
								<li>Work Hours:<br>
								<span>07:30 AM - 9:30 PM Daily</span></li>
								<li>Email:<br>
								<span>info@company.com</span></li>
								<li>Social Media:<br>
								<span><a href="#">Facebook</a>, <a href="#">Instagram</a>,
										<a href="#">Behance</a>, <a href="#">Linkedin</a></span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ***** Subscribe Area Ends ***** -->


	<!-- ***** footer 불러오기 ! ***** -->
	<%@include file="footer.jsp"%>



	<script>
		$(function() {
			var selectedClass = "";
			$("p").click(function() {
				selectedClass = $(this).attr("data-rel");
				$("#portfolio").fadeTo(50, 0.1);
				$("#portfolio div").not("." + selectedClass).fadeOut();
				setTimeout(function() {
					$("." + selectedClass).fadeIn();
					$("#portfolio").fadeTo(50, 1);
				}, 500);

			});
		});
		
		
        setInterval(() => {
            let nextIndex = (currentIndex + 1) % sliderCount;
          
            $(slider[currentIndex]).animate({ opacity: 0 }, 500); // 현재 슬라이더 숨기기
            $(slider[nextIndex]).animate({ opacity: 1 }, 500); // 다음 슬라이더 보여주기
          
            currentIndex = nextIndex;
        }, sliderInterval);
	</script>

</body>
</html>