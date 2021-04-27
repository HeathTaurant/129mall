/**
 * 
 */
$('.changeQty-minus').click(function(){
	if(parseInt($('.changeQty-num').val())>1){
	$('.changeQty-num').val(parseInt($('.changeQty-num').val()-1));	
	}
});
	
	
$('.changeQty-plus').click(function(){
	$('.changeQty-num').val(parseInt($('.changeQty-num').val())+1);	
});
	