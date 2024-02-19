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
            <form name="frmRequest" id="frmRequest" action="./request_ps.php" method="post" enctype="multipart/form-data" novalidate="novalidate">
                <input type="hidden" name="mode" value="add_request">
                <input type="hidden" name="channel" value="2">
                <input type="hidden" name="m_no" value="23008">
                <div class="cocoService">
                    <h1 class="title"><span>01</span> 주문자 정보</h1>
                    <div class="checkSame">
                        <span class="form_element">
                            <input type="checkbox" id="sameCustomer" name="sameCustomer" value="y" onclick="checkSame(this)" checked="">
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
                            <th >이름</th>
                            <td>
                                <input type="text" name="name" maxlength="30" >
                            </td>
                        </tr>
                        <tr>
                            <th>이메일</th>
                            <td>
                                <input type="text" name="email" >
                            </td>
                        </tr>
                        <tr>
                            <th>주소</th>
                            <td class="member_address">
                                <div class="address_postcode">
                                    
                                    
                                </div>
                                <div class="address_input">
                                    <div class="member_warning">
                                        <input type="text" name="address"  >
                                    </div>
                                    <div class="member_warning js_address_sub">
                                        <input type="text" name="address_sub" >
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>전화번호</th>
                            <td>
                                <input type="text" name="phone">
                            </td>
                        </tr>
                        <tr>
                            <th>휴대폰</th>
                            <td>
                                <input type="text" name="mobile"  >
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </section>
                    <h1 class="title"><span>02</span>제품 정보</h1>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <colgroup>
                            <col width="25%">
                            <col width="75%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>제품명</th>
                            <td>
                                <input type="text" name="goods_name[]">
                            </td>
                        </tr>
                        <tr>
                            <th>구입일</th>
                            <td>
                                <input type="text" name="buy_date[]" placeholder="예) 2004-12">
                            </td>
                        </tr>
                        <tr>
                            <th>구입처</th>
                            <td>
                                <input type="text" name="buy_shop[]">
                            </td>
                        </tr>
                        <tr>
                            <th>구입가격</th>
                            <td>
                                <input type="text" name="buy_price[]" placeholder="예) 1,200,000">
                            </td>
                        </tr>
                        <tr>
                            <th>희망가격</th>
                            <td>
                                <input type="text" name="wish_price[]">
                            </td>
                        </tr>
                        <tr>
                            <th>제품상태</th>
                            <td>
                                <input type="text" name="goods_status[]" placeholder="60자 이내">
                            </td>
                        </tr>
                        <tr>
                            <th>부속품</th>
                            <td class="input_area" colspan="3">
                                <span class="form_element">
                                    <input type="checkbox" id="tmp_certify_goods1_1" name="tmp_certify_goods[]" value="1">
                                    <input type="checkbox" id="tmp_certify_goods1_2" name="tmp_certify_goods[]" value="2">
                                    <input type="checkbox" id="tmp_certify_goods1_3" name="tmp_certify_goods[]" value="3">
                                    <input type="checkbox" id="tmp_certify_goods1_4" name="tmp_certify_goods[]" value="4">
                                    <input type="checkbox" id="tmp_certify_goods1_5" name="tmp_certify_goods[]" value="5">
                                    <input type="checkbox" id="tmp_certify_goods1_6" name="tmp_certify_goods[]" value="6">
                                    <input type="checkbox" id="tmp_certify_goods1_9" name="tmp_certify_goods[]" value="9">
                                    <label for="tmp_certify_goods1_1">게런티카드</label>
                                    <label for="tmp_certify_goods1_2">보증서</label>
                                    <label for="tmp_certify_goods1_3">더스트백</label>
                                    <label for="tmp_certify_goods1_4">영수증</label>
                                    <label for="tmp_certify_goods1_5">케이스</label>
                                    <label for="tmp_certify_goods1_6">택</label>
                                    <label for="tmp_certify_goods1_9">기타:</label>
                                </span>
                                <input type="text" name="etc_certify_goods[]">
                                <input type="hidden" name="certify_goods[]">
                            </td>
                        </tr>
                        <tr>
                            <th>상세설명</th>
                            <td>
                                <textarea name="goods_contents[]"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <th>상품이미지1</th>
                            <td>
                                <div class="file_upload_sec">
                                    <label for="attach1_1">
                                        <input type="text" class="file_text" title="파일 첨부하기" readonly="readonly">
                                    </label>
                                    <div class="btn_upload_box">
                                        <button type="button" class="btn_upload" title="찾아보기"><em>찾아보기</em></button>
                                        <input type="file" id="attach1_1" name="img1[]" class="file" title="찾아보기">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>상품이미지2</th>
                            <td>
                                <div class="file_upload_sec">
                                    <label for="attach1_2">
                                        <input type="text" class="file_text" title="파일 첨부하기" readonly="readonly">
                                    </label>
                                    <div class="btn_upload_box">
                                        <button type="button" class="btn_upload" title="찾아보기"><em>찾아보기</em></button>
                                        <input type="file" id="attach1_2" name="img2[]" class="file" title="찾아보기">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div id="id_add_goods">
                        
                    </div>
                    <div class="request_notice">신청하실 상품이 2개 이상일 경우 아래의 '신청상품 추가하기' 버튼을 눌러 상품정보를 추가해 주세요.</div>
    
                    <div class="btn_center_box">
                        
                        <button type="button" class="btn_request">신청서 작성완료</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>