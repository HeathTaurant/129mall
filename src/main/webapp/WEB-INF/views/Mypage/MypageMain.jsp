<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
         <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../../resources/Css/Main/Side/Main.css">
<link rel="stylesheet" href="../../../resources/Css/Mypage/mypage.css"/>
</head>
<body>

<div class="Main container">

	<div class="Header">
		<jsp:include page="../Main/Header_empty.jsp" flush="false" />
	</div>
	<div class="Leftaside">
		<jsp:include page="../Main/Leftaside.jsp" flush="false" />
	</div>
   
   <div class="section ">
	<h2>my page</h2> <hr>
	
	
	<h2>내 정보</h2> <hr>
	
	 <c:if test="${! empty autoInfo }">
	    아이디 ${autoInfo.mem_userid } <br> 
	이름  ${autoInfo.mem_username }<br> 
	 이메일  ${autoInfo.mem_email }  <br> <hr>

	<h2><a href="/Mypage/OrderDetail">구매내역</a></h2> <hr>
	
	
	<h2><a href="/Mypage/CartList">장바구니</a></h2> <hr>
	
	<h2><a href="/Mypage/MemberDelete">회원탈퇴</a></h2> <hr>
	
	
	<form action="/Mypage/MemberChange" method="post">
	<input type="submit" value="회원정보수정">
	</form>

	</c:if>

</div>

	<div class="Rightaside">
		<jsp:include page="../Main/Rightaside.jsp" flush="false" />
	</div>
	<div class="Footer">
		<jsp:include page="../Main/Footer.jsp" flush="false" />
	</div>

</div>

</body>
</html>