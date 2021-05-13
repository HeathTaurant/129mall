<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/Css/Mypage/Mypage.css"/>
<link rel="stylesheet" type="text/css" href="../../../resources/Css/Main/Side/Main.css">
</head>
<body>

<div class="Main container">
		<div>
  		<jsp:include page="../Main/Header_empty.jsp" flush="false" />
		</div>


		<div class="Leftaside">
			<jsp:include page="../Main/Leftaside.jsp" flush="false" />

		</div>

		<div class="Section">
		<h2>회원 탈퇴</h2>
		
		
		<form method="post" action="/Mypage/MemberDeleteOk">
		아이디<input type="text" name="mem_userid">
		비밀번호<input type="password" name="mem_password">
		
		<input type="submit" value="회원탈퇴">
		
		</form>
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