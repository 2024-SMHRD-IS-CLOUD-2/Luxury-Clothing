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

    <title>결제시스템</title>
	
	<!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/font-awesome.css">

    <link rel="stylesheet" href="${path}/resources/assets/css/templatemo-hexashop.css">

    <link rel="stylesheet" href="${path}/resources/assets/css/owl-carousel.css">

    <link rel="stylesheet" href="${path}/resources/assets/css/lightbox.css">

    <link rel="stylesheet" href="${path}/resources/assets/css/payment.css">
	
	<!--

	TemplateMo 571 Hexashop

	https://templatemo.com/tm-571-hexashop

	-->

</head>
<body>
            	<c:set var="prod" value="${sessionScope.prod_detail}"/>

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
	   
	     <!-- 헤더 바 아래에 h1 태그로 주문서 작성/결제 텍스트 추가 -->
    <h1 style="text-align: center;">주문서 작성/결제</h1>

    <!-- 테이블 추가 -->
    <table border="1" align="center" class="fuck">
        <!-- 첫 번째 행 -->
        <tr>
            <td>상품정보</td>
            <td>수량</td>
            <td>상품금액</td>
            <td>할인/적립</td>
            <td>합계</td>
            <td>배송비</td>
        </tr>
        <!-- 두 번째 행 -->
        <tr>
            <!-- 상품정보 이미지 -->
            <td class="img"><img alt="#" src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fkream-phinf.pstatic.net%2FMjAyMjEwMTdfMjUz%2FMDAxNjY1OTkwMjk2MzQ1.kD6Q835pRV53W8PxhqfWjjxVVyzrUfyXrLThdNTplG4g.kPptm_tqS761fmPajkMcBJqM9VqxQzRPqiF_yv6TIX8g.JPEG%2Fa_28e10190b4f94640addcc4cbd10458ec.jpg%3Ftype%3Dl_webp&type=sc960_832"></td>
            <!-- 상품명 -->
            <td>1개</td>
            <!-- 수량 -->
            <td>${prod.prod_price}</td>
            <!-- 상품금액 -->
            <td><input type="checkbox" ></td>
            <!-- 할인/적립 -->
            <td>${prod.prod_price}</td>
            <!-- 합계 -->
            <td>0원</td>
        </tr>
    </table>

    <!-- 두 번의 개행 -->
    <br><br>

    <!-- 추가 정보를 담을 div -->
    <div class="rufwp" style="border: 1px solid black; padding: 10px; position=relative top=200px">
        <!-- 상품의 총 금액을 보여줄 부분 -->
        <span style="float: right;">총 결제금액 : ${prod.prod_price}</span>
        <div style="clear: both;"></div> <!-- float 해제 -->
    </div>
	<br>
	<br>
    <!-- 기존의 나머지 코드는 생략 -->

    <div class="sibal">
        <div class="input-box">
            <form action="/주문처리경로" method="post">
          
                <br>
                <p>주문자 정보</p>
                <br>
 
				<span class="form_element">
	                <input type="checkbox" id="sameCustomer" name="sameCustomer" onclick="checkSame();" required="required">
	                <label for="sameCustomer" class="on">회원정보와 동일</label>
                </span><br>
                <label for="주문자이름">주문하시는 분</label>
                <input type="text" id="name" name="name" required="required">
                <br>
                <label for="주소">주소</label>
                <input type="text" id="address" name="address" required="required">
                <br>
                <label for="연락처">연락처</label>
                <input type="tel" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"
                    placeholder="010-1234-5678" required>
                <br>
                <label for="이메일">이메일 주소</label>
                <input type="email" id="email" name=""email"" required="required">
                <br>
                <br>

                <p>배송 정보</p>
                <label for="주문자이름">배송지 입력</label>
                <input type="text" id="DELI_ADDR" name="DELI_ADDR" required>
                <br>
                <label for="주소">받으실 분</label>
                <input type="text" id="RECIPIENT_NAME" name="RECIPIENT_NAME" required>
                <br>
                <label for="연락처">받으실 분 연락처</label>
                <input type="tel" id="RECIPIENT_PHONE" name="RECIPIENT_PHONE" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"
                    placeholder="010-1234-5678" required>
                <br>
                <label for="주소">배송 메세지</label>
                <input type="text" id="DELI_MESSAGE" name="DELI_MESSAGE" required>
                <br>
                <br>

                <p>결제 정보</p>

                <label for="PAY_METHOD"><input type="radio" id="PAY_METHOD" name="결제수단" required> 무통장 입금</label>
                <label for="PAY_METHOD"><input type="radio" id="PAY_METHOD" name="결제수단" required> 신용카드</label>
                <label for="PAY_METHOD"><input type="radio" id="PAY_METHOD" name="결제수단" required> 계좌이체</label>
                <label for="PAY_METHOD"><input type="radio" id="PAY_METHOD" name="결제수단" required> 가상계좌</label>
                <hr>
                <br>
                
                <div class="bottomrufwp" style="border: 1px solid black; padding: 10px; position=relative top=200px">
        <!-- 상품의 총 금액을 보여줄 부분 -->
        <span style="float: right;">총 결제금액 : ${prod.prod_price}</span>
        <div style="clear: both;"></div> <!-- float 해제 -->
    </div>
                <br>

                <div class="button-container">
                    <button type="submit">결제취소</button>
                    <button type="submit">결제하기</button>
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