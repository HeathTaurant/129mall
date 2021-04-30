/**
 * 
 */


$('.color-btn-1').click(function(){
  $(this).css("border", "1px solid #6125ba");
  $('.color-btn-2').css("border", "0");
  $('.color-btn-3').css("border", "0");
  $('.color-btn-4').css("border", "0");
});
$('.color-btn-2').click(function(){
  $(this).css("border", "1px solid #ba259c");
  $('.color-btn-1').css("border", "0");
  $('.color-btn-3').css("border", "0");
  $('.color-btn-4').css("border", "0");
});
$('.color-btn-3').click(function(){
  $(this).css("border", "1px solid #25ba72");
  $('.color-btn-1').css("border", "0");
  $('.color-btn-2').css("border", "0");
  $('.color-btn-4').css("border", "0");
});
$('.color-btn-4').click(function(){
  $(this).css("border", "1px solid #2595ba");
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