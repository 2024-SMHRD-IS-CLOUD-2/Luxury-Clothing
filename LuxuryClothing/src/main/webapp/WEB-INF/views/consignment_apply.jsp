<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

	<title>Luxury Clothing</title>
	
	<!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/font-awesome.css">

    <link rel="stylesheet" href="${path}/resources/assets/css/templatemo-hexashop.css">

    <link rel="stylesheet" href="${path}/resources/assets/css/owl-carousel.css">

    <link rel="stylesheet" href="${path}/resources/assets/css/lightbox.css">

    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/csgnApply.css">
	
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
	    
	    
	   <%@include file ="header.jsp" %>
	<div class="content_box">
        <div class="service_tit">
            <h2>위탁 서비스</h2>
        </div>
        <div class="service_cont">
            <!-- <div class="mplTab">
                <ul>
                    <li><a href="/service/trust_sell_guide.php">위탁안내사항</a></li>
                    <li class="select"><a href="/service/trust_sell_request.php">위탁신청</a></li>
                </ul>
            </div> -->
            <div class="bannercocoService bannercocoService2">
                <span>
                    Luxury Clothing에서는 고객님과의 상호 신뢰를 바탕으로 위탁판매 서비스를 실시하고 있습니다.
                </span>
                <p>전문가의 정확한 감정과 합리적인 가격 책정으로 위탁 고객님과 구매고객님께 </span> 
                <p>모두 만족을 드리는 차별화된 코코럭스만의 서비스를 체험해보세요.</p>
            </div>
            <form action="csgnApply.do" method="post" onsubmit="return checkPrice()">
            	<input type="hidden" name="user_id" id="user_id" value="${user_result.user_id}">
                <div class="cocoService">
                    <h1 class="title"><span>01</span> 주문자 정보</h1>
                    <div class="checkSame">
                        <span class="form_element">
                            <input type="checkbox" id="sameCustomer" name="sameCustomer" onclick="checkSame();">
                            <label for="sameCustomer" class="on">회원정보와 동일</label>
                        </span>
                    </div>
                    <section >
                    <table class="consignment_table" border="0" cellpadding="0" cellspacing="0" >
                        <colgroup>
                            <col width="25%">
                            <col width="75%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>이름</th>
                            <td>
                                <input type="text" name="name" id="name" maxlength="30" >
                            </td>
                        </tr>
                        <tr>
                            <th>이메일</th>
                            <td>
                                <input type="text" name="email" id="email">
                            </td>
                        </tr>
                        <tr>
                            <th>주소</th>
                            <td class="address">
                                <div class="address_input">
                                        <input type="text" name="address" id="address" >
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>휴대폰번호</th>
                            <td>
                                <input type="text" name="phone" id="phone">
                            </td>
                        </tr>
                    </tbody>
                </table>
                </section>
                	<h1 class="title"><span>02 </span>제품 정보</h1>
                <table border="0" cellpadding="0" cellspacing="0">
                        <colgroup>
                            <col width="25%">
                            <col width="75%">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>상품 인증</th>
                                <td>
                                    <span class="certification">
                                        <!-- <input type="checkbox" id="tmp_certify_goods1_1" name="tmp_certify_goods[]" value="1">
                                        <label for="tmp_certify_goods1_2">보증서</label> -->
                                        <!-- 다른거 추가 시 배열형태로 변경 필요 -->
                                        <input type="checkbox" id="tmp_certify_goods" name="tmp_certify_goods" value="2">
                                        <label for="tmp_certify_goods">영수증</label>
                                        <!-- <input type="checkbox" id="tmp_certify_goods1_5" name="tmp_certify_goods[]" value="5">
                                        <label for="tmp_certify_goods1_6">택</label> -->
                                        <!-- OCR 기능 사용 방법에 따라 변경 -->
                                    </span>

                                </td>
                            </tr>
								<!-- img 배열로 바꿀 예정 -->                            
                            <tr>
                            	<!-- 파일 선택 버튼 이 클래스에서 크기좀 줄여야함. -->
                                <th>상품이미지1</th>
                                <td>
                                    <div class="btn_upload_box">
                                            <input type="file" name="img" id="img" class="file">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                            	<!-- 파일 선택 버튼 이 클래스에서 크기좀 줄여야함. -->
                                <th>상품이미지2</th>
                                <td>
                                    <div class="btn_upload_box">
                                            <input type="file" name="img" id="img" class="file">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                            	<!-- 파일 선택 버튼 이 클래스에서 크기좀 줄여야함. -->
                                <th>상품이미지3</th>
                                <td>
                                    <div class="btn_upload_box">
                                            <input type="file" name="img" id="img" class="file">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>제품명</th>
                            	<td>
                                	<input required="required" type="text" name="goods_name" id="goods_name">
                            	</td>
	                        </tr>
	                        <tr>
	                            <th>구매가격</th>
	                            <td>
	                                <input required="required" type="number" name="goods_price" id="goods_price">
	                            </td>
	                        </tr>
	                        <tr>
	                            <th>희망가격</th>
	                            <td>
	                                <input required="required" type="number" name="wish_price">
	                            </td>
	                        </tr>
	                        <tr>
	                            <th>상품 종류</th>
	                            <td>
		                            <select class="category" name="goods_kind" id="goods_kind">
										<option value="모자">모자</option>
										<option value="상의">상의</option>
										<option value="하의">하의</option>
										<option value="악세서리">악세서리</option>
									</select>
								</td>	
	                        </tr>
                            <tr>
                                <th>상품 정보 기입</th>
                                <td>
                                     <textarea required="required" name="goods_option" id="goods_option" placeholder="상품 사이즈, 색상 등 관련 정보를 적어주세요(500자 이내)"></textarea>
                                </td>
                            </tr>
	                        <tr>
	                            <th>제품상태 
									<br>상세설명</th>
	                            <td>
	                                <textarea required="required" name="goods_detail" id="goods_detail" placeholder="2000자 이내"></textarea>
	                            </td>
	                        </tr>
	                        </tbody>
                    </table>
		                    <button type="submit" id="submit">신청서 작성완료</button>
                </div>
            </form>
        </div>
    </div>
    
    <%@include file ="footer.jsp" %>

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

    <script>

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
        });

        function checkSame() {
            // 체크박스가 체크되었는지 확인
            if ($('input:checkbox[id="sameCustomer"]').is(":checked") == true){
                // 세션에서 사용자 정보 가져오기
                var user_name = "${user_result.user_name}";
                var user_email = "${user_result.user_email}";
                var user_address = "${user_result.user_addr}";
                var user_phone = "${user_result.user_phone}";

                // 사용자 정보를 각 입력 필드에 할당
                $('#name').val(user_name);
                $('#email').val(user_email);
                $('#address').val(user_address);
                $('#phone').val(user_phone);
            } else {
                // 체크가 해제되면 입력 필드 비우기
                $('#name').val("");
                $('#email').val("");
                $('#address').val("");
                $('#phone').val("");
            }
        }
        
	</script>
</body>
</html>