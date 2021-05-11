<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="mypage.css"/>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../../Js/MyPage/memberchange.js"></script>
</head>
<body>

<div class="container">
  
  <div class="section">
    <h2>주문결제</h2> <hr>
    <table border="1">
      <tr>
      <td>상품번호</td>
      <td width="300px">상품정보</td>
      <td >수량</td>
      <td>배송비</td>
	  <td>예상적립금</td>
	 <td>주문금액</td>
	</tr>			
      
    </table>
    
    
    <img src="">
    
    
      <h3>약관 동의 및 개인정보 수집 안내</h3>
      *비회원 구매시 구매이용약관 및 개인정보 보호를 위해 이용자의 동의가 필요합니다
      <hr>
    <strong>구매이용약관</strong><br><br>
    <div class="text">
      <(주)쇼핑몰>('http://localhost'이하 'musun129mall')은(는) 「개인정보 보호법」 제30조에 따라 정부주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.

      
○ 이 개인정보처리방침은 2021년 1월 1부터 적용됩니다.

제1조(개인정보의 처리 목적)
<(주)쇼핑몰>('http://localhost'이하 'musun129mall')은(는) 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 이용 목적이 변경되는 겨우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
1. 홈페이지 회원가입 및 관리
회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 서비스 부정이용 방지, 만14세 미만 아동의 개인정보 처리 시 법정대리인의 동의여부 확인 목적으로 개인정보를 처리합니다.
      
      
    </div>
        
 <input type="radio" id="buy_agree1" name="buy_agree1" checked="checked"/>
 <label for="buy_agree1">동의합니다</label>   
  <input type="radio" id="buy_agree2" name="buy_agree2"/>
  <label for="buy_agree2">동의안함</label> <hr>
        
        
        <strong>개인정보수집동의</strong><br><br>
        
 <div class="text">
   <(주)쇼핑몰>('http://localhost'이하 '몰몰')은(는) 「개인정보 보호법」 제30조에 따라 정부주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.

○ 이 개인정보처리방침은 2021년 1월 1부터 적용됩니다.

제1조(개인정보의 처리 목적)
<(주)쇼핑몰>('http://localhost'이하 '몰몰')은(는) 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 이용 목적이 변경되는 겨우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
1. 홈페이지 회원가입 및 관리
회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 서비스 부정이용 방지, 만14세 미만 아동의 개인정보 처리 시 법정대리인의 동의여부 확인 목적으로 개인정보를 처리합니다.
   
   
 </div>
     
     <input type="radio" id="perinfo_agree1" name="perinfo_agree1" checked="checked"/>
 <label for="perinfo_agree1">동의합니다</label>   
  <input type="radio" id="perinfo_agree2" name="perinfo_agree2"/>
  <label for="perinfo_agree2">동의안함</label> <hr>
  
     
     <strong>주문자정보</strong>(*필수입력사항) <hr>
     
     *받는분 <input type="text" name="ordername"><hr>
     전화번호 <input type="text" name=""><hr>
     *휴대전화 <input type="text" name="orderphone"><hr>
     *배송지주소<br><br> 
     우편 번호: <input type="text" id="mem_postcode" name="mem_postcode" size="10" required >
   <input type="button" value="주소검색"  onclick="javascript:execDaumPostcode()"> <br><br>
    주소:<input type="text" id="mem_address1"  name="mem_address1" size="50"><br><br>
   나머지 주소: <input type="text"  name="mem_address2" size="50" /> <hr>
   
     배송시 요청사항 <input type="text" ><hr> <br>
     
    <strong>할인정보</strong><hr>
     <form  method="post" action=""> 
     쿠폰<input type="text" name="coupon"> 
     <input type="submit" value="쿠폰조회"> 
     </form>
     
     <form  method="post" action=""> 
     포인트<input type="text" name="point"> 
     <input type="submit" value="포인트조회"> 
     </form>
     
     <hr><br>
     
     
     <strong>결제수단</strong><hr>
     
     <input type="radio" name="paymethod" id="crditcard"><label for="crditcard">신용카드</label>
     <input type="radio" name="paymethod" id="checkcard"><label for="checkcard">체크카드</label>
     <input type="radio" name="paymethod" id="crditcard"><label for="muton">무통장입금</label>
       <input type="radio" name="paymethod"id="crditcard"><label for="crditcard">실시간결제</label>
     <input type="radio" name="paymethod"id="crditcard"><label for="crditcard">휴대폰결제</label> <hr>
     
          <strong>간편결제</strong><hr>
     <input type="radio" name="paymethod2"id="kakaopay"><label for="kakaopay">카카오페이</label>
     <input type="radio" name="paymethod2"id="neverpay"><label for="neverpay">네이버페이</label>
     <input type="radio" name="paymethod2"id="smilepay"><label for="smilepay">스마일페이</label>
     <input type="radio" name="paymethod2"id="payco"><label for="payco">페이코(PAYCO)</label> <hr>

      <strong>주문하기</strong>
      <form method="post" action="">
      <input type="submit" value="주문하기">
      </form>

     </div>
 
  
  
  
</div>


</body>
</html>