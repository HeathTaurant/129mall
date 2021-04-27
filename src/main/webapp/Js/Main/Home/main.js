const newIn = document.querySelector(".newIn");
const best = document.querySelector(".best");
const top1 = document.querySelector(".top1");
const detail = document.querySelector(".detail");

newIn.addEventListener("click", function () {
  fetchPage("newIn.jsp");
});

best.addEventListener("click", function () {
	  fetchPage("best.jsp");
});

top1.addEventListener("click", function () {
	  fetchPage("top.jsp");
});

detail.addEventListener("click", function () {
	  fetchPage("view/main.jsp");
});

function fetchPage(name) {
  fetch(name).then(function (response) {
    response.text().then(function (text) {
      document.querySelector("article").innerHTML = text;
    });
  });
}