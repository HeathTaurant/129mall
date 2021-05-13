<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" type="text/css" href="../../../resources/Css/Main/Side/Main.css">
<link rel="icon" type="image/png" href="../../../resources/Img/Main/Side/main_logo.png" />
<script src="../../../resources/Js/Main/Side/Main.js" defer></script>
<title>129 Mall</title>
<body>

	<div class="Main container">
		<div class="Header">
		<jsp:include page="Header.jsp" flush="false" />
		</div>


		<div class="Leftaside">
			<jsp:include page="Leftaside.jsp" flush="false" />

		</div>

	<div class="Section">
	<section id="product" class="section">
      <h1>129Mall 추천 상품</h1>
      <h3>Product</h3>
      <div class="product__categories">
        <button class="category__btn selected" data-filter="*">
          All <span class="category__count">37</span>
        </button>
        <button class="category__btn" data-filter="newArrival">
          NEW ARRIVAL
          <span class="category__count">8</span>
        </button>
        <button class="category__btn" data-filter="weeklyBest">
          WEEKLY BEST
          <span class="category__count">12</span>
        </button>
        <button class="category__btn" data-filter="promotion">
          PROMOTION
          <span class="category__count">17</span>
        </button>
      </div>
      <div class="products">
        <a href="../../Productdetail/main" class="product" data-type="newArrival">
          <img class="product__img" src="../../../../resources/Img/Main/Side/pants/pants_1.jpg" alt="" />
          <div class="product__description">
            <h3>바지</h3>
            <span>남성 인기 바지</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="newArrival">
          <img class="product__img" src="../../../../resources/Img/Main/Side/pants/pants_2.jpg" alt="" />
          <div class="product__description">
            <h3>바지</h3>
            <span>남성 인기 바지</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="newArrival">
          <img class="product__img" src="../../../../resources/Img/Main/Side/pants/pants_3.jpg" alt="" />
          <div class="product__description">
            <h3>바지</h3>
            <span>남성 인기 바지</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="newArrival">
          <img class="product__img" src="../../../../resources/Img/Main/Side/pants/pants_4.jpg" alt="" />
          <div class="product__description">
            <h3>바지</h3>
            <span>남성 인기 바지</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="newArrival">
          <img class="product__img" src="../../../../resources/Img/Main/Side/pants/pants_5.jpg" alt="" />
          <div class="product__description">
            <h3>바지</h3>
            <span>남성 인기 바지</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="newArrival">
          <img class="product__img" src="../../../../resources/Img/Main/Side/pants/pants_6.jpg" alt="" />
          <div class="product__description">
            <h3>바지</h3>
            <span>남성 인기 바지</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="newArrival">
          <img class="product__img" src="../../../../resources/Img/Main/Side/pants/pants_7.jpg" alt="" />
          <div class="product__description">
            <h3>바지</h3>
            <span>남성 인기 바지</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="newArrival">
          <img class="product__img" src="../../../../resources/Img/Main/Side/pants/pants_8.jpg" alt="" />
          <div class="product__description">
            <h3>바지</h3>
            <span>남성 인기 바지</span>
          </div>
        </a>

        <a href="../../Productdetail/main" class="product" data-type="weeklyBest">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shirt/shirt_1.jpg" alt="" />
          <div class="product__description">
            <h3>셔츠</h3>
            <span>남성 인기 셔츠</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="weeklyBest">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shirt/shirt_2.jpg" alt="" />
          <div class="product__description">
            <h3>셔츠</h3>
            <span>남성 인기 셔츠</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="weeklyBest">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shirt/shirt_3.jpg" alt="" />
          <div class="product__description">
            <h3>셔츠</h3>
            <span>남성 인기 셔츠</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="weeklyBest">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shirt/shirt_4.jpg" alt="" />
          <div class="product__description">
            <h3>셔츠</h3>
            <span>남성 인기 셔츠</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="weeklyBest">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shirt/shirt_5.jpg" alt="" />
          <div class="product__description">
            <h3>셔츠</h3>
            <span>남성 인기 셔츠</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="weeklyBest">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shirt/shirt_6.jpg" alt="" />
          <div class="product__description">
            <h3>셔츠</h3>
            <span>남성 인기 셔츠</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="weeklyBest">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shirt/shirt_7.jpg" alt="" />
          <div class="product__description">
            <h3>셔츠</h3>
            <span>남성 인기 셔츠</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="weeklyBest">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shirt/shirt_8.jpg" alt="" />
          <div class="product__description">
            <h3>셔츠</h3>
            <span>남성 인기 셔츠</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="weeklyBest">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shirt/shirt_9.jpg" alt="" />
          <div class="product__description">
            <h3>셔츠</h3>
            <span>남성 인기 셔츠</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="weeklyBest">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shirt/shirt_10.jpg" alt="" />
          <div class="product__description">
            <h3>셔츠</h3>
            <span>남성 인기 셔츠</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="weeklyBest">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shirt/shirt_11.jpg" alt="" />
          <div class="product__description">
            <h3>셔츠</h3>
            <span>남성 인기 셔츠</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="weeklyBest">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shirt/shirt_12.jpg" alt="" />
          <div class="product__description">
            <h3>셔츠</h3>
            <span>남성 인기 셔츠</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_1.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_2.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_3.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_4.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_5.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_6.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_7.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_8.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_9.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_10.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_11.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_12.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_13.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_14.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_15.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_16.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
        <a href="../../Productdetail/main" class="product" data-type="promotion">
          <img class="product__img" src="../../../../resources/Img/Main/Side/shoes/shoes_17.jpg" alt="" />
          <div class="product__description">
            <h3>신발</h3>
            <span>남성 인기 신발</span>
          </div>
        </a>
      </div>
    </section>
		</div>

		<div class="Rightaside">
			<jsp:include page="Rightaside.jsp" flush="false" />
		</div>

		<div class="Footer">
			<jsp:include page="Footer.jsp" flush="false" />
		</div>
	</div>
</body>
</head>