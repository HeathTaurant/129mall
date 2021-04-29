/**
 * 
 */
/*font-weight: normal;*/

$('.review-nav-btn li:nth-child(1)').click(function(){
  $(this).css("font-weight","bold" );
  $('review-nav-btn:nth-child(2)').css("font-weight","normal" );
  $('review-nav-btn:nth-child(3)').css("font-weight","normal");
});

$('.review-nav-btn li a:nth-child(2)').click(function(){
  $(this).css("font-weight","bold" );
  $('review-nav-btn:nth-child(1)').css("font-weight","normal" );
  $('review-nav-btn:nth-child(3)').css("font-weight","normal");
});

$('.review-nav-btn li:nth-child(3)').click(function(){
  $(this).css("font-weight","bold" );
  $('review-nav-btn:nth-child(1)').css("font-weight","normal" );
  $('review-nav-btn:nth-child(2)').css("font-weight","normal");
});
