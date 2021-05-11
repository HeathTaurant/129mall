<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" type="text/css" href="../../../Css/Main/Side/Main.css">
<title>JS Bin</title>
<body>

	<div class="Main container">
		<div class="Header">header</div>


		<div class="Leftaside">
			<jsp:include page="Leftaside.jsp" flush="false" />

		</div>



		<div class="Section"></div>

		<div class="Rightaside">
			<jsp:include page="Rightaside.jsp" flush="false" />
		</div>




		<div class="Footer">
			<jsp:include page="Footer.jsp" flush="false" />
		</div>
	</div>
</body>
</head>