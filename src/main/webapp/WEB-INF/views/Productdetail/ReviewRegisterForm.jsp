<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script src="https://kit.fontawesome.com/6ba428731d.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../../resources/Css/Main/Side/Main.css">
<link rel="stylesheet" type="text/css" href="../../../../resources/Css/Productdetail/asideMid.css">
<link rel="stylesheet" type="text/css" href="../../../../resources/Css/Productdetail/section.css">
<!-- <link rel="stylesheet" type="text/css"
	href="../../../../resources/Css/Main/Side/Header.css">
 -->

<title>Insert title here</title>
</head>
<body>
 	<c:set var="mem_userid" value="gkwlsdud2020" />
 	<c:set var="it_id" value="1" />
 	<%-- 	<jsp:useBean id="item"
		class="com.musun129.shopMall.Dto.Order_detailDto">
		<jsp:setProperty name="buyItem" property="*" />
	</jsp:useBean> --%>
	<!-- 		<div class="header">header</div> -->

	<div class="Main container">
		
		<div>
			<jsp:include page="../Main/Header_empty.jsp" flush="false" />

		</div>
		<div class="Leftaside">
			<jsp:include page="../Main/Leftaside.jsp" flush="false" />

		</div>
	    <div class="Section">
		<form method="POST" action="uploadFile" enctype="multipart/form-data"  >
		<input type="hidden" name="mem_userid" id="mem_userid" value="gkwlsdud2003">
		<input type="hidden" name="it_id" id="it_id" value="${it_id}" >
		<div ><i class="fas fa-registered"></i><strong>상품 리뷰</strong></div>
		<div>이 상품에 대해서 얼마나 만족하시나요?</div>
		<hr>
		<label><input type="radio" name="review_point" value="1"> <i class="fas fa-star"></i></label>
        <label><input type="radio" name="review_point" value="2"> <i class="fas fa-star"></i><i class="fas fa-star"></i></label>
        <label><input type="radio" name="review_point" value="3"> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></label>
        <label><input type="radio" name="review_point" value="4"> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></label>
        <label><input type="radio" name="review_point" value="5"> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></label>
		<input type="hidden" name="review_point" value="review_point" disabled="disabled">
		<hr>
		<div>
		<label for="review-content"><i class="fab fa-telegram-plane"></i><abbr></abbr>
		<strong> Tell us your voice:</strong></label></div>
		
       <textarea id="review_content" name="review_content" rows="5" cols="33" > </textarea>
         <hr>
         <div><i class="far fa-folder"></i><abbr></abbr><strong>사진첨부</strong></div>
          <input type = "file" name = review_Img accept = "image/*" >
          <hr>
         <input type="submit" value="등록" >
		</form>
		</div>
		<div class="payment-options"></div>
		
		<div class="Rightaside">
			<jsp:include page="../Main/Rightaside.jsp" flush="false" />
		</div>
			<div class="Footer">
			<jsp:include page="../Main/Footer.jsp" flush="false" />
		</div>
	</div>
</body>
</html>
