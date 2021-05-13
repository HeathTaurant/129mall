<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<link rel="stylesheet" type="text/css"
	href="<c:url value="../../../../resources/Css/Productdetail/asideMid.css"/>">
<link rel="stylesheet" type="text/css"
	href="../../../../resources/Css/Productdetail/section.css">
<link rel="stylesheet" type="text/css"
	href="../../../../resources/Css/Main/Side/Leftaside.css">
<link rel="stylesheet" type="text/css"
	href="../../../../resources/Css/Main/Side/Rightaside.css">
<link rel="stylesheet" type="text/css"
	href="../../../../resources/Css/Main/Side/Footer.css">
<!-- <link rel="stylesheet" type="text/css"
	href="../../../../resources/Css/Main/Side/Header.css">
 -->

<title>Insert title here</title>
</head>
<body>
	<%-- 	<jsp:useBean id="item"
		class="com.musun129.shopMall.Dto.Order_detailDto">
		<jsp:setProperty name="buyItem" property="*" />
	</jsp:useBean> --%>
	<!-- 		<div class="header">header</div> -->

	<div class="container">
		
		<div>
			<jsp:include page="../Main/Header.jsp" flush="false" />

		</div>
		<div class="Leftaside">
			<jsp:include page="../Main/Leftaside.jsp" flush="false" />

		</div>

		<div class="Rightaside">
			<jsp:include page="../Main/Rightaside.jsp" flush="false" />
		</div>



		<div class="section">
		
		
		
		</div>


		<div class="payment-options">

					</div>
			<div class="Footer">
			<jsp:include page="../Main/Footer.jsp" flush="false" />
		</div>
	</div>
</body>
</html>