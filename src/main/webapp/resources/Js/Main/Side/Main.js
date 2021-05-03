const categorieContainer = document.querySelector(".product__categories");
const productContainer = document.querySelector(".products");
const products = document.querySelectorAll(".product");

categorieContainer.addEventListener("click", (e) => {
  // 버튼에서 숫자를 클릭할 경우 filter값이 undefined가 되기 때문에 필터값이
  // 없는 경우는 parentNode의 필터값을 받아오게 한다
  const filter = e.target.dataset.filter || e.target.parentNode.dataset.filter;
  if (filter == null) {
    return;
  }
  const active = document.querySelector(".category__btn.selected");
  active.classList.remove("selected");
  const target =
    e.target.nodeName === "BUTTON" ? e.target : e.target.parentNode;
  target.classList.add("selected");

  productContainer.classList.add("animation-out");
  setTimeout(() => {
    products.forEach((product) => {
      // console.log(product);
      // console.log(product.dataset.type);
      if (filter === "*" || filter === product.dataset.type) {
        product.classList.remove("invisible");
      } else {
        product.classList.add("invisible");
      }
    });
    productContainer.classList.remove("animation-out");
  }, 300);

  // 아래의 반복문 2개와 결과값은 같지만 위와같이 심플하게forEach문으로 하자

  //   console.log(`===============================`);
  //   for (let product of products) {
  //     console.log(product);
  //   }

  //   console.log(`===============================`);
  //   let product;
  //   for (let i = 0; i < products.length; i++) {
  //     product = products[i];
  //     console.log(product);
  //   }
});
