const payment = document.querySelector('.payment-options');

var slides = document.querySelector('.slides'),
    slide= document.querySelectorAll('.slides li'),
    currentIdx=0,
    slideCount= slide.length,
    prevBtn =document.querySelector('.recommand-left-btn'),
    slideWidth= 220,
    nextBtn =document.querySelector('.recommand-right-btn');
  
slides.style.width= (slideWidth*slideCount) +"px";
    
function moveSlide(num){
  slides.style.left=-num*220+'px';
  currentIdx=num;
};
nextBtn.addEventListener('click',function(){
  if(currentIdx<slideCount-5){ 
  moveSlide(currentIdx+1);}else{
	setTimeout(function(){
	 slides.classList.remove("Animation");	
	},500);
    moveSlide(0);
  }
});
prevBtn.addEventListener('click',function(){
    if(currentIdx>0){ 
  moveSlide(currentIdx-1);}else{
    moveSlide(slideCount-5);
  }
});

document.addEventListener('scroll', () => {
	  if (window.scrollY > 10000) {
		 payment.classList.remove('visible');
	  } else {
		 payment.classList.add('visible');
	  }
	});

