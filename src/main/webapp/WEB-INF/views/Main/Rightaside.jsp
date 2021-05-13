<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="../../../../resources/Css/Main/Side/Rightaside.css" />
    <script src="../../../../resources/Js/Main/Side/Rightaside.js" defer></script>
    <title>Insert title here</title>
  </head>
  <body>
    <div class="Right container">
    <c:if test="${! empty autoInfo }">
       <div class="username"> 
      <p><strong>${autoInfo.mem_username}</strong>님 <br>안녕하세요!</p>
      </div>
      </c:if>
      <div class="container1">
      <c:if test="${empty autoInfo }">
      <a class="item item1" href="../../Join/memberJoin">
          <i class="fas fa-user-plus"></i>
        	회원가입
       </a>
       
        <a class="item item2" href="../../Login/loginMain">
          <i class="fas fa-sign-in-alt"></i>
          	로그인
        </a>
        </c:if>
        <c:if test="${! empty autoInfo }">
        <a class="item item2" href="/logout">
          <i class="fas fa-sign-out-alt"></i>
          	로그아웃
        </a>
        	
        <a class="item item3" href="../../Mypage/CartList">
          <i class="fas fa-shopping-cart"></i>
          	장바구니
        </a>
        	

        <a class="item item4" href="../../Mypage/MypageMain">
        	<i class="fas fa-user-check"></i>
       		마이페이지
        </a>
        </c:if>
        
        
<!--         <a class="item item1" href="../../Mypage/LastProduct"> -->
<!--           	LastProduct -->
<!--         </a> -->
        
<!--         <a class="item item1" href="../../Mypage/MemberDelete"> -->
<!--           	MemberDelete -->
<!--         </a>  -->
        
<!--         <a class="item item1" href="../../Mypage/MemberUpdate"> -->
<!--           	MemberUpdate -->
<!--         </a> -->
        
<!--         <a class="item item1" href="../../Mypage/MyReview"> -->
<!--           	MyReview -->
<!--         </a> -->
        
<!--         <a class="item item1"href="../../Mypage/OrderCheck"> -->
<!--           	OrderCheck -->
<!--         </a> -->
        

<!--         <a  class="item item1" href="../../Mypage/OrderDate"> -->
<!--            OrderDate	 -->
<!--         </a> -->
        
<!--         <a class="item item1" href="../../Mypage/Pay"> -->
<!--           	Pay -->
<!--         </a>       -->
        
      </div>
      <div class="container2"></div>
      <div class="arrow-up">
        <div class="Topbtn"><i class="fas fa-arrow-up"></i></div>
      </div>
    </div>
  </body>
</html>
