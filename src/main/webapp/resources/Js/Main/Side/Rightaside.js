
const Topbtn = document.querySelector('.Topbtn');

console.log(window.scrollY);


document.addEventListener('scroll', () => {
  if (window.scrollY > 300) {
    Topbtn.classList.add('visible');
  } else {
    Topbtn.classList.remove('visible');
  }
});

Topbtn.addEventListener('click', () => {
  const scrollTo = document.querySelector('body');
  scrollTo.scrollIntoView({behavior: "smooth"});
})