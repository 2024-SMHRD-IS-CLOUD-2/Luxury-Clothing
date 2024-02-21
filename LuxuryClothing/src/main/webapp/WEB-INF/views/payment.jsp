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

    <div class="center-container">
        <div class="input-box">
            <form action="/주문처리경로" method="post">
            	<c:set var="prod" value="${sessionScope.prod_detail}" />id="sameCustomer"
                <p>결제 정보 입력</p>
                <hr>
                <br>
                <p>주문자 정보</p>
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
                
                <div class="total-amount">
                    <p class="total-amount-text">총 결제 금액: ${prod.prod_price}</p>
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