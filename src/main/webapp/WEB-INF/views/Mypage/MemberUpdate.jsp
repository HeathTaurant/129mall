<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="mypage.css"/>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>


function execDaumPostcode() {
  new daum.Postcode({
    oncomplete: function(data) {
      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

      // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
      // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
      var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
      var extraRoadAddr = ''; // 도로명 조합형 주소 변수

      // 법정동명이 있을 경우 추가한다. (법정리는 제외)
      // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
      if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
        extraRoadAddr += data.bname;
      }
      // 건물명이 있고, 공동주택일 경우 추가한다.
      if(data.buildingName !== '' && data.apartment === 'Y'){
        extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
      }
      // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
      if(extraRoadAddr !== ''){
        extraRoadAddr = ' (' + extraRoadAddr + ')';
      }
      // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
      if(fullRoadAddr !== ''){
        fullRoadAddr += extraRoadAddr;
      }

      // 우편번호와 주소 정보를 해당 필드에 넣는다.
      document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
      document.getElementById('roadAddress').value = fullRoadAddr;
      document.getElementById('jibunAddress').value = data.jibunAddress;

      // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
      if(data.autoRoadAddress) {
        //예상되는 도로명 주소에 조합형 주소를 추가한다.
        var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
        document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

      } else if(data.autoJibunAddress) {
          var expJibunAddr = data.autoJibunAddress;
          document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
      } else {
          document.getElementById('guide').innerHTML = '';
      }
      
     
    }
  }).open();
}
</script>

</head>
<body>



 <div class="container">
   
   <div class="section ">
    <h2>회원정보관리</h2>
    *는 필수입력항목 <br><br>
  
   아이디<input type="text"/><hr>
  	
  	<form method="post" action="" >
   *비밀번호<input type="password" name="password" required><hr>
    
   *이름<input type="text" name="name" required><hr>
  
   
   *이메일<input type="text" name="email" required>
         <input type="email">
           <select name="email2" onChange="" title="직접입력">
									<option value="non">직접입력</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="naver.com">naver.com</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="paran.com">paran.com</option>
									<option value="nate.com">nate.com</option>
									<option value="google.com">google.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="empal.com">empal.com</option>
									<option value="korea.com">korea.com</option>
									<option value="freechal.com">freechal.com</option>
							</select> <hr>
   
   
   
   *전화번호<input type="text" name="phone" required><hr>
  
   
   
   생년월일<input type="date" name="birthday" >
   <hr>
   
  
   *주소 <br><br>
   
   우편 번호: <input type="text" id="zipcode" name="zipcode" size="10" required >
   <input type="button" value="주소검색"  onclick="javascript:execDaumPostcode()"> <br><br>
    지번 주소:<input type="text" id="roadAddress"  name="roadAddress" size="50"><br><br>
	도로명 주소: <input type="text" id="jibunAddress" name="jibunAddress" size="50"><br><br>
   나머지 주소: <input type="text"  name="namujiAddress" size="50" /> <hr>
   
					 <!--   <span id="guide" style="color:#999"></span> -->
					  
  
   이메일수신여부: 네<input type="radio" name="emailagree" value="yes">
   			  아니요<input type="radio" name="emailagree" value="no"><hr>
   
  
   SNS수신여부: 네<input type="radio" name="snsagree" value="yes">
   			  아니요<input type="radio" name="snsagree" value="no"><hr>
   			  
   <input type="submit" value="회원 정보 수정 ">
   <input type="reset" value="취소">
   </form> <hr>
   
    
    </div>
  
    
   </div>
</body>
</html>