const slidelist = document.querySelector(".slidelist");
const slideitemImg = document.querySelectorAll(".slideitem img");
const slideCount = slideitemImg.length - 2;
let currentIdx = 1;
const btn1 = document.querySelector(".btn1");
const btn2 = document.querySelector(".btn2");
const btn3 = document.querySelector(".btn3");
const nextBtn = document.querySelector(".control.next");
const prevBtn = document.querySelector(".control.prev");

// window.addEventListener("resize", function () {
//   let windowInnerwidth = window.innerWidth - 1000;
//   let windowInnerheight = window.innerHeight;
//   slides.style.width = windowInnerwidth;
//   console.log(windowInnerwidth);
//   console.log(windowInnerheight);
//   slides.style.transform = `translateX(-${windowInnerwidth}vw)`;
// });

slidelist.style.transform = `translateX(-100%)`;

btn1.addEventListener("click", function () {
  currentIdx = 1;
  slideshow(currentIdx);
});

btn2.addEventListener("click", function () {
  currentIdx = 2;
  slideshow(currentIdx);
});

btn3.addEventListener("click", function () {
  currentIdx = 3;
  slideshow(currentIdx);
});

nextBtn.addEventListener("click", function () {
  currentIdx += 1;
  slideshow(currentIdx);
});

prevBtn.addEventListener("click", function () {
  currentIdx -= 1;
  slideshow(currentIdx);
});

function slideshow(index) {
  slidelist.classList.add("animated");
  currentIdx = index;
  slidelist.style.transform = `translateX(-${index}00%)`;
  setTimeout(function () {
    slidelist.classList.remove("animated");
  }, 500);

  if (currentIdx >= 4) {
    currentIdx = 1;
    slidelist.style.transform = `translateX(-${index}00%)`;
    setTimeout(function () {
      slidelist.classList.remove("animated");
      slidelist.style.transform = `translateX(-${currentIdx}00%)`;
    }, 500);
  }

  if (currentIdx <= 0) {
    currentIdx = slideCount;
    slidelist.style.transform = `translateX(-${index}00%)`;
    setTimeout(function () {
      slidelist.classList.remove("animated");
      slidelist.style.transform = `translateX(-${currentIdx}00%)`;
    }, 500);
    setTimeout(function () {
      slidelist.classList.add("animated");
    }, 600);
  } 
}

let timer = undefined;

function autoSlide() {
  if (timer === undefined) {
    timer = setInterval(function () {
  	  console.log(currentIdx);
  	  slideshow(currentIdx + 1);
    }, 1500);
  }
}

autoSlide();
