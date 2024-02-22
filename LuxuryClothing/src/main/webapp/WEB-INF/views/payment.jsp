<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
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
            <!-- <form  method="post"> -->
            	<c:set var="prod" value="${sessionScope.prod_detail}"/>
            	<c:set var="user" value="${sessionScope.user_result}"/>
                <p>결제 정보 입력</p>
                <hr>
                <br>
                <p>주문자 정보</p>
				<span class="form_element">
	                <input type="checkbox" id="sameCustomer" name="sameCustomer" onclick="checkSame();">
	                <label for="sameCustomer" class="on">회원정보와 동일</label>
                </span><br>
                <label for="주문자이름">주문하시는 분</label>
                <input type="text" id="name" name="name" required="required">
                <br>
                <label for="연락처">연락처</label>
                <input type="tel" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-1234-5678" required="required">
                <br>
                <label for="이메일">이메일 주소</label>
                <input type="email" id="email" name="email" required="required">
                <br>
                <br>

                <p>배송 정보</p>
                <label for="주문자이름">배송지 입력</label>
                <input type="text" id="deli_addr" name="deli_addr" required>
                <br>
                <label for="주소">수령인</label>
                <input type="text" id="deli_name" name="deli_name" required>
                <br>
                <label for="연락처">수령인 연락처</label>
                <input type="tel" id="deli_phone" name="deli_phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"
                    placeholder="010-1234-5678" required>
                <br>
                <label for="주소">배송 메세지</label>
                <input type="text" id="deli_message" name="deli_message" required>
                <br>
                <br>

                <p>결제 정보</p>

                <label for="PAY_METHOD"><input type="radio" id="PAY_METHOD" name="PAY_METHOD" required="required">카카오페이</label>
                <br>
                    <p>상품명: ${prod.prod_name}</p>
                
                <div class="total-amount">
                    <p class="total-amount-text">총 결제 금액: ${prod.prod_price}</p>
                </div>
                <br>

                <div class="button-container">
                    <button type="submit">결제취소</button>
                    <button onclick="requestPay()">결제하기</button>
                </div>
            <!-- </form> -->
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
        
        IMP.init("imp03167257");

        function requestPay() {
          IMP.request_pay({
            pg: "kakaopay",
            pay_method: "card",
            merchant_uid: "test_fa${prod.prod_id}",
            name: "${prod.prod_name}",
            amount: ${prod.prod_price},
            popup: true,
            buyer_name: "${user.user_name}",
            buyer_tel: "${user.user_phone}",
            buyer_email: "${user.user_email}",
            buyer_addr: "${user.user_addr}",
          }, function (rsp) { 
        	  // callback
              if (rsp.success) {
            	  console
            	  var paid_amout = rsp.paid_amount;
            	  var status = rsp.status;
            	  var pay_method = rsp.pay_method;
            	  var user_id = "${user.user_id}";
            	  var prod_price = "${prod.prod_price}";
            	  var prod_id = "${prod.prod_id}";
            	  var deli_addr = $("#deli_addr").val();
            	  var deli_phone = $("#deli_phone").val();
            	  var deli_name = $("#deli_name").val();
            	  
            	  console.log(user_id);
            	  console.log(prod_price);
            	  console.log(paid_amout);
            	  console.log(status);
            	  console.log(pay_method);
            	  console.log(prod_id);
            	  console.log(deli_addr);
            	  console.log(deli_phone);
            	  console.log(deli_name);
            	  
            	    var paymentData = {
       		        	paidAmount: paid_amout,
       		        	status: status,
       		        	payMethod: pay_method,
       		            user_id: user_id,
                  	    prod_price: prod_price,
                  	    prod_id: prod_id,
                  	    deli_addr: deli_addr,
                  	    deli_phone: deli_phone,
                  	    deli_name: deli_name
       		        // 필요한 경우 다른 정보도 추가 가능
            		    };
            	    /* const obj = JSON.stringify(paymentData); */
            	    console.log(paymentData);
            	    $.ajax({
            	        url: 'paySuccess.do', // 서버로 전송할 URL
            	        type: 'POST', // 전송 방식
            	        data: paymentData, // 전송할 데이터
            	        // dataType: 'json', // 전송 데이터 형식
            	        success: function(response) {
            	            console.log('Data sent successfully:', response);
            	            // 추가적인 처리 가능
            	        },
            	        error: function(xhr, status, error) {
            	            console.error('Error occurred while sending data:', error);
            	            // 에러 처리
            	        }
            	    });
              } else {
                  console.log(rsp);
              }
          });
        }
	</script>
</body>
</html>