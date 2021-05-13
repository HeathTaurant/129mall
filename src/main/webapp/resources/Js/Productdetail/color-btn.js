/**
 * 
 */


$('.color-btn-1').click(function() {
	$(this).css("border", "1px solid #6125ba");
	$("input[name=it_color]").val("블랙");
	$('.color-btn-2').css("border", "0");
	$('.color-btn-3').css("border", "0");
	$('.color-btn-4').css("border", "0");
});
$('.color-btn-2').click(function() {
	$(this).css("border", "1px solid #ba259c");
	$("input[name='it_color']").val("멜란지그레이");
	$('.color-btn-1').css("border", "0");
	$('.color-btn-3').css("border", "0");
	$('.color-btn-4').css("border", "0");
});
$('.color-btn-3').click(function() {
	$(this).css("border", "1px solid #25ba72");
	  $("input[name=it_color]").val("네이비");	
	$('.color-btn-1').css("border", "0");
	$('.color-btn-2').css("border", "0");
	$('.color-btn-4').css("border", "0");
});
$('.color-btn-4').click(function() {
	$(this).css("border", "1px solid #2595ba");
	  $("input[name=it_color]").val("핑크");	
	$('.color-btn-1').css("border", "0");
	$('.color-btn-2').css("border", "0");
	$('.color-btn-3').css("border", "0");
});



/* 순수 자바스크립트
$('.color-btn-1').click(function(){
  $('.color-btn-1').style.border = "1px solid #000000";
  $('.color-btn-2').style.border = 0;
  $('.color-btn-3').style.border = 0;
  $('.color-btn-4').style.border = 0;
});
$('.color-btn-2').click(function(){
  $('.color-btn-2').style.border = "1px solid #000000";
  $('.color-btn-1').style.border = 0;
  $('.color-btn-3').style.border = 0;
  $('.color-btn-4').style.border = 0;
});

$('.color-btn-3').click(function(){
  $('this').style.border = "1px solid #000000";
  $('.color-btn-1').style.border = 0;
  $('.color-btn-2').style.border = 0;
  $('.color-btn-4').style.border = 0;
});

$('.color-btn-4').click(function(){
  $('this').style.border = "1px solid #000000";
  $('.color-btn-1').style.border = 0;
  $('.color-btn-2').style.border = 0;
  $('.color-btn-3').style.border = 0;
});*/