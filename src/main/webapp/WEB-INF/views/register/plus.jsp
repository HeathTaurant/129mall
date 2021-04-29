<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
function callByAjax() {
	
	let form = document.form1;
	
	let num1 = form.num1.value;
	let num2 = form.num2.value;
	
	let action = form.action;
	
	$.get(
		action, 
		{
			num1:num1,
			num2:num2
		},
		function(data) {
			$('.rs').empty().append(data);
//			$('.rs').text(data);
		},
		'html'
	);
}
</script>
<title>더하기 페이지</title>
<style>
.rs {
	border: 10px dotted black;
	padding: 30px;
	font-size: 3rem;
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h1>더하기 폼 페이지 입니다.</h1>

<form name="form1" action="./doplus" method="get">
	<div>
		<input type="text" name="num1" placeholder="숫자 1" />
	</div>
	<div>
		<input type="text" name="num2" placeholder="숫자 2" />
	</div>
	<div>
		<input type="submit" value="더하기" />
	</div>
	<div>
		<input onclick="callByAjax()" type="button" value="더하기v2" />
	</div>
</form>

<h1>더하기 결과</h1>

<div class="rs"></div>

</body>
</html>