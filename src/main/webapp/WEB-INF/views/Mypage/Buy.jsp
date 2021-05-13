<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/Css/Mypage/mypage.css" />
<link rel="stylesheet" href="../../../resources/Css/Join/memberJoinStyle.css" />
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('roadAddress').value = fullRoadAddr;
						document.getElementById('jibunAddress').value = data.jibunAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							//예상되는 도로명 주소에 조합형 주소를 추가한다.
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
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

		<div class="section">
			<h2>주문결제</h2>
			<hr>
			<table border="1">
				<tr>
					<td>상품번호</td>
					<td width="300px">상품정보</td>
					<td>수량</td>
					<td>배송비</td>
					<td>예상적립금</td>
					<td>주문금액</td>
				</tr>
				<tr>
					<td>${itemRequestDto.it_id}</td>
					<td>상품명 :${itemRequestDto.it_name}<br> 사이즈:${itemRequestDto.it_size}<br> 색상:${itemRequestDto.it_color}</td>
					<td>${itemRequestDto.it_sell_count}</td>
					<td>2500원</td>
					<td>${itemRequestDto.it_price*itemRequestDto.it_sell_count*0.05}</td>
					<td>${itemRequestDto.it_price*itemRequestDto.it_sell_count}원</td>
				</tr>
			</table>


			<img src="">


			<h3>약관 동의 및 개인정보 수집 안내</h3>
			*비회원 구매시 구매이용약관 및 개인정보 보호를 위해 이용자의 동의가 필요합니다
			<hr>
			<strong>구매이용약관</strong><br>
			<br>
			<div class="text"><(주)쇼핑몰>('http://localhost'이하 '몰몰')은(는) 「개인정보
				보호법」 제30조에 따라 정부주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여
				다음과 같이 개인정보 처리방침을 수립·공개합니다. ○ 이 개인정보처리방침은 2021년 1월 1부터 적용됩니다.

				제1조(개인정보의 처리 목적) <(주)쇼핑몰>('http://localhost'이하 '몰몰')은(는) 다음의 목적을 위하여
				개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 이용 목적이 변경되는 겨우에는
				「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다. 1. 홈페이지 회원가입 및
				관리 회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 서비스 부정이용 방지,
				만14세 미만 아동의 개인정보 처리 시 법정대리인의 동의여부 확인 목적으로 개인정보를 처리합니다.</div>

			<input type="radio" name="agree" />동의합니다 <input type="radio"
				name="agree" />동의안함
			<hr>


			<strong>개인정보수집동의</strong><br>
			<br>

			<div class="text"><(주)쇼핑몰>('http://localhost'이하 '몰몰')은(는) 「개인정보
				보호법」 제30조에 따라 정부주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여
				다음과 같이 개인정보 처리방침을 수립·공개합니다. ○ 이 개인정보처리방침은 2021년 1월 1부터 적용됩니다.

				제1조(개인정보의 처리 목적) <(주)쇼핑몰>('http://localhost'이하 '몰몰')은(는) 다음의 목적을 위하여
				개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 이용 목적이 변경되는 겨우에는
				「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다. 1. 홈페이지 회원가입 및
				관리 회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 서비스 부정이용 방지,
				만14세 미만 아동의 개인정보 처리 시 법정대리인의 동의여부 확인 목적으로 개인정보를 처리합니다.</div>

			<input type="radio" name="agree" />동의합니다 <input type="radio"
				name="agree" />동의안함
			<hr>
			<br>
			<br> <strong>주문자정보</strong>(*필수입력사항)
			<hr>

			*받는분 <input type="text" name="ordername" value="${autoInfo.mem_username}">
			<hr>
			전화번호 <input type="text" name="">
			<hr>
			*휴대전화 <input type="text" name="orderphone">
			<hr>
			*배송지주소<br>
			<br> 우편 번호: <input type="text" id="zipcode" name="zipcode"
				size="10" required> <input type="button" value="주소검색"
				onclick="javascript:execDaumPostcode()"> <br>
			<br> 지번 주소:<input type="text" id="roadAddress"
				name="roadAddress" size="50"><br>
			<br> 도로명 주소: <input type="text" id="jibunAddress"
				name="jibunAddress" size="50"><br>
			<br> 나머지 주소: <input type="text" name="namujiAddress" size="50" />
			<hr>

			배송시 요청사항 <input type="text">
			<hr>
			<br> <strong>할인정보</strong>
			<hr>
			<form method="post" action="">
				쿠폰<input type="text" name="coupon"> <input type="submit"
					value="쿠폰조회">
			</form>

			<form method="post" action="">
				포인트<input type="text" name="point"> <input type="submit"
					value="포인트조회">
			</form>

			<hr>
			<br> <strong>결제수단</strong>
			<hr>

			<input type="radio" name="paymethod">신용카드 <input type="radio"
				name="paymethod">체크카드 <input type="radio" name="paymethod">무통장입금
			<input type="radio" name="paymethod">실시간결제 <input
				type="radio" name="paymethod">휴대폰결제
			<hr>

			<strong>간편결제</strong>
			<hr>
			<input type="radio" name="paymethod">카카오페이 <input
				type="radio" name="paymethod">네이버페이 <input type="radio"
				name="paymethod">스마일페이 <input type="radio" name="paymethod">페이코(PAYCO)
			<hr>

			<strong>주문하기</strong>
			<form method="post" action="">
				<input type="submit" value="주문하기">
			</form>

		</div>




	</div>


</body>
</html>