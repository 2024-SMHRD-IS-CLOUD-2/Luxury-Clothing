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
</head>
<body>
    <!-- 복붙코드 jsp : header 불러오기 ! ***** -->
    <%@include file ="header.jsp" %>

<div>
	<h1> 안녕 나는 메인 내용</h1>
</div>

    <!-- 복붙코드 jsp : footer 불러오기 ! ***** -->
    <%@include file ="footer.jsp" %>

</body>
</html>