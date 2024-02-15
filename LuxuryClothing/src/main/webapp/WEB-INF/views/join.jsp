<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Hexashop - Contact Page</title>


    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/font-awesome.css">

    <link rel="stylesheet" href="${path}/resources/assets/css/templatemo-hexashop.css">

    <link rel="stylesheet" href="${path}/resources/assets/css/owl-carousel.css">

    <link rel="stylesheet" href="${path}/resources/assets/css/lightbox.css">

    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/Join.css">
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

    <!-- 아이콘과 이름 -->
<br>
<br>
<br>
<br>
<br>
<br>
<div class="context-box">

<h2 align="center">회원가입</h2>
<!-- 검은색 실선 구분선 -->
<hr class="separator">

<!-- 회원가입 폼 -->
<form action="join.do" method="post" style="border-radius: 5px;">
    <table class="form-table">
        <!-- 이름 -->
        <tr>
            <td class="label">이름</td>
            <td>  <input type="text" name="name" style="border-radius: 5px;"></td>
            
        </tr>
        <!-- 아이디 -->
        <tr>
            <td class="label">아이디</td>
            <td>
            	<input type="text" name="id"  style="border-radius: 5px;">
            	<button type="button" onclick="checkDuplicate()">중복확인</button>
            	<span id="idMessage"></span>
            </td>
        </tr>
        <!-- 비밀번호 -->
		<tr>
		    <td class="label">비밀번호</td>
		    <td><input type="password" name="pw" id="pwd1" style="border-radius: 5px;"></td>
		</tr>
		
		<!-- 비밀번호 재입력 -->
		<tr>
		    <td class="label">비밀번호 재입력</td>
		    <td><input type="password" name="pw_confirm" id="pwd2" style="border-radius: 5px;"></td>
		</tr>
			<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
			<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
		<!-- 
		성별
		<tr>
		    <td class="label">성별</td>
		    <td>
		        <select name="gender" style="margin-left: 10px;">
		            <option value="male">남성</option>
		            <option value="female">여성</option>
		        </select>
		    </td>
		</tr>
		 -->
		 
		<!-- 연락처 -->
		<tr>
		    <td class="label" rowspan="2">휴대폰번호</td>
		    <td><input type="tel" name="phone" style="border-radius: 5px;"></td>
		</tr>
		<tr>
<!-- 		    <td><input type="tel" name="phone2" style="border-radius: 5px;"></td>
 -->		</tr>
		
		<!-- 이메일 -->
		<tr>
		    <td class="label">이메일</td>
		    <td>
		        <input type="text" name="email" style="border-radius: 5px;">
		    </td>
		</tr>
		
		<!-- 주소 -->
		<tr>
		    <td class="label" rowspan="2">주소</td>
		    <td><input type="text" name="address" style="border-radius: 5px;"></td>
		</tr>
		<tr>
<!-- 		    <td><input type="text" name="address2" style="border-radius: 5px;"></td>
 -->		</tr>
		
		    </table>
		    <br>
		    <br>
		    <br>
    
    <!-- 가입취소와 회원가입 버튼 -->
    <div class="button-container">
        <button type="submit" id="submit">회원가입</button>
        <button type="submit">가입취소</button>
    </div>
	<br>
	<br>
	<br>
</form>
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

    </script>
    
    <script type="text/javascript">
    $(function(){
        $("#alert-success").hide();
        $("#alert-danger").hide();
        $("input").keyup(function(){
            var pwd1=$("#pwd1").val();
            var pwd2=$("#pwd2").val();
            if(pwd1 != "" || pwd2 != ""){
                if(pwd1 == pwd2){
                    $("#alert-success").show();
                    $("#alert-danger").hide();
                    $("#submit").removeAttr("disabled");
                }else{
                    $("#alert-success").hide();
                    $("#alert-danger").show();
                    $("#submit").attr("disabled", "disabled");
                }    
            }
        });
    });
	</script>​

  </body>

</html>
