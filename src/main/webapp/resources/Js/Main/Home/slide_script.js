const slides = document.querySelector(".slides");
const slide = document.querySelectorAll(".slide img");
const slideCount = slide.length - 2;
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

slides.style.transform = `translateX(-100vw)`;

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
  slides.classList.add("animated");
  currentIdx = index;
  slides.style.transform = `translateX(-${index}00vw)`;
  setTimeout(function () {
    slides.classList.remove("animated");
  }, 500);

  if (currentIdx >= 4) {
    currentIdx = 1;
    slides.style.transform = `translateX(-${index}00vw)`;
    setTimeout(function () {
      slides.classList.remove("animated");
      slides.style.transform = `translateX(-${currentIdx}00vw)`;
    }, 500);
  }

  if (currentIdx <= 0) {
    currentIdx = slideCount;
    slides.style.transform = `translateX(-${index}00vw)`;
    setTimeout(function () {
      slides.classList.remove("animated");
      slides.style.transform = `translateX(-${currentIdx}00vw)`;
    }, 500);
    setTimeout(function () {
      slides.classList.add("animated");
    }, 600);
  }
}
