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
	
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/update_modify.css">
	<!--

	TemplateMo 571 Hexashop

	https://templatemo.com/tm-571-hexashop

	-->
	<style type="text/css">
/* 모든 요소의 기본 스타일 초기화 */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* body 태그 스타일링 */
body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

/* container 클래스 스타일링 */
.container {
  width: 70%; /* 수정: container 너비 조정 */
  max-width: 800px;
  margin: 0 auto; /* 가운데 정렬 */
  text-align: center; /* 버튼 가운데 정렬을 위한 텍스트 정렬 */
}

/* a 태그 스타일링 */
a {
  color: black; /* 글자색을 검정색으로 설정 */
  text-decoration: none; /* 밑줄 제거 */
  margin: 0 30px; /* 좌우 간격을 30px로 설정 */
}

/* 1번째와 5번째 a 태그 사이 간격 설정 */
.container a:first-child,
.container a:last-child {
  margin: 0 30px 0 0; /* 우측 간격만 30px로 설정 */
}

/* hr 태그 스타일링 */
hr {
  margin: 20px 0; /* 위아래 간격을 20px로 설정 */
}

/* h2 태그 스타일링 */
h2 {
  text-align: center; /* 가운데 정렬 */
}

/* 테이블 스타일링 */
form table {
  margin: 20px auto; /* 가운데 정렬 및 상하 여백 추가 */
  width: 90%; /* 테이블 폭을 container의 70%로 설정 */
  padding: 0 15%; /* 좌우 패딩을 container의 15%로 설정 */
  border-spacing: 0 10px; /* 행 간격을 10px로 설정 */
}

/* 테이블 1열 스타일링 */
form table th:first-child {
  background-color: rgb(216, 227, 231); /* 회색 배경색 */
  text-align: right; /* 오른쪽 정렬 */
  padding-right: 10px; /* 오른쪽 여백 추가 */
  width: 35%; /* 1열 너비를 25%로 설정 */
}

/* 테이블 2열 스타일링 */
form table td input {
  border-radius: 10px; /* 약간 둥글게 수정 */
  margin-left: 3px; /* 왼쪽 여백 추가 */
  width: calc(90% - 20px); /* input 너비 조정 */
  padding: 5px; /* input 패딩 추가 */
}

/* 테이블 1열과 2열 경계선 스타일링 */
form table td {
  border-right: 10px solid transparent; /* 투명한 경계선 추가 */
}

/* 중복확인 버튼 스타일링 */
button[type="button1"] {
  color: white; /* 글자색을 흰색으로 설정 */
  background-color: black; /* 배경색을 검정색으로 설정 */
  border-radius: 5px; /* 약간 둥글게 */
  padding: 7px 15px; /* 버튼 내부 여백 추가 */
  margin-left: 10px; /* 왼쪽 여백 추가 */
  position: relative; /* 상대 위치 설정 */
  left: 10px; /* 오른쪽 여백 설정 */
  margin-top: 10px;
}

/* 돌아가기 버튼 위치 설정 */
button[type="button"],
input[type="submit"] {
  display: inline-block; /* 인라인 블록 요소로 변경 */
  margin: 10px auto; /* 가운데 정렬 및 상하 여백 추가 */
  clear: both; /* float 해제 */
  color: white; /* 글자색을 흰색으로 설정 */
  background-color: black; /* 배경색을 검정색으로 설정 */
  border-radius: 5px; /* 약간 둥글게 */
  padding: 7px 15px; /* 버튼 내부 여백 추가 */
}

/* 수정된 중복확인 버튼 위치 설정 */
button[type="button1"] {
  float: none; /* 부동 해제 */
}
	</style>

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
	<div class="container">
	    <br>
	    <br>
	    <br>
	    <hr>
	    <a href="#" onclick="return false;">회원정보변경</a> 
	    <a href="#" onclick="return false;">위탁 상품관리</a> 
	    <a href="#" onclick="return false;">주문목록 내역</a> 
	    <a href="#" onclick="return false;">환불/입금 내역</a> 
	    <a href="#" onclick="return false;">회원탈퇴</a>
	    <hr>
	    <br>
	    <br>
	    <h2>회원정보변경</h2>
	    <br>
	    <br>
	  <form action="userModify.do" method="post">
	    <table>
	      <tr>
	        <th>이름</th>
	        <td><input required="required" type="text" name="name" id="name" placeholder="이름을 입력하세요"></td>
	      </tr>
	      <tr>
	        <th>연락처</th>
	        <td><input required="required" type="tel" name="phone" id="phone" placeholder="연락처를 입력하세요"></td>
	      </tr>
	      <tr>
	        <th>이메일</th>
	        <td><input required="required" type="email" name="email" id="email" placeholder="이메일을 입력하세요"></td>
	      </tr>
	      <tr>
	        <th>주소</th>
	        <td><input required="required" type="text" name="address" id="address" placeholder="주소를 입력하세요"></td>
	      </tr>
	    </table>
	    <button id="goBack" type="button">돌아가기</button>
	    <button type="submit">정보 수정</button>
	  </form>
	</div>

    
    <%@include file ="footer.jsp" %>

    <script type="text/javascript">

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
        
        const goback = document.getElementById("goBack");
        
       	goback.addEventListener("click", function(){
       		console.log("event")
       		window.location.href="main.do"
       	});

       	$(function(){
            $("#alert-success").hide();
            $("#alert-danger").hide();
            $("input").keyup(function(){
                var pwd1=$("#pwd1").val();
                var pwd2=$("#pwd2").val();
                
                if(pwd1 != "" && pwd2 != ""){
                    // 비밀번호가 일치하는지 확인
                    if(pwd1 == pwd2){
                        $("#alert-success").show(); // 비밀번호 일치 알림 보이기
                        $("#alert-danger").hide(); // 비밀번호 불일치 알림 숨기기
                        $("#submit").removeAttr("disabled"); // 회원가입 버튼 활성화
                    } else {
                        $("#alert-success").hide(); // 비밀번호 일치 알림 숨기기
                        $("#alert-danger").show(); // 비밀번호 불일치 알림 보이기
                        $("#submit").attr("disabled", "disabled"); // 회원가입 버튼 비활성화
                    }    
                } else {
                    $("#submit").attr("disabled", "disabled"); // 모든 필수 입력 칸이 채워지지 않은 경우 회원가입 버튼 비활성화
                }
                
            });
        });
	</script>
</body>
</html>