<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" type="text/css" href="../../../../resources/Css/Main/Side/Leftaside.css">
<script src="../../../../resources/Js/Main/Side/Leftaside.js" defer></script>
<title>Insert title here</title>
</head>
<body>
	<nav class="accordion">
      <div class="navbar__logo">
        <a href="/Main/Main"><img src="../../../../resources/Img/Main/Side/main_logo.png" alt=""></a>
      </div>
      <div class="navbar__search">
        <i class="fas fa-search"></i> Search
        <input type="text" name="search" size="20" />
      </div>
      <input type="checkbox" id="answer01" />
      <label class="menu__outer" for="answer01"
        >NEW IN<span class="arrow-down"
          ><i class="fas fa-arrow-circle-down"></i></span></label>
      <div>
        <ul>
          <li class="menu__inner">
            신상품 1
          </li>
          <li class="menu__inner">
            신상품 2
          </li>
          <li class="menu__inner">
            신상품 3
          </li>
          <li class="menu__inner">
            신상품 4
          </li>
          <li class="menu__inner">
            신상품 5
          </li>
        </ul>
      </div>
      <input type="checkbox" id="answer02" />
      <label class="menu__outer" for="answer02">BEST
        <span class="arrow-down"><i class="fas fa-arrow-circle-down"></i></span
        ></label>
      <div>
        <ul>
          <li class="menu__inner">
            베스트 1
          </li>
          <li class="menu__inner">
            베스트 2
          </li>
          <li class="menu__inner">
            베스트 3
          </li>
          <li class="menu__inner">
            베스트 4
          </li>
          <li class="menu__inner">
            베스트 5
          </li>
        </ul>
      </div>

      <input type="checkbox" id="answer03" />
      <label class="menu__outer" for="answer03"
        >TOP<span class="arrow-down"
          ><i class="fas fa-arrow-circle-down"></i></span></label class="menu__outer">
      <div>
        <ul>
          <li class="menu__inner"><a href="#">tee</a></li>
          <li class="menu__inner"><a href="#">stripe</a></li>
          <li class="menu__inner"><a href="#">mtm&hood</a></li>
        </ul>
      </div>

      <input type="checkbox" id="answer04" />
      <label class="menu__outer" for="answer04"
        >SHIRT&BLOUSE<span class="arrow-down"
          ><i class="fas fa-arrow-circle-down"></i></span></label>
      <div>
        <ul>
          <li class="menu__inner"><a href="#">blouse</a></li>
          <li class="menu__inner"><a href="#">shirts</a></li>
        </ul>
      </div>

      <input type="checkbox" id="answer05" />
      <label class="menu__outer" for="answer05"
        >KNIT&CARDIGAN<span class="arrow-down"
          ><i class="fas fa-arrow-circle-down"></i></span></label>
      <div>
        <ul>
          <li class="menu__inner"><a href="#">kint</a></li>
          <li class="menu__inner"><a href="#">cardigan</a></li>
        </ul>
      </div>
      <input type="checkbox" id="answer06" />
      <label class="menu__outer" for="answer06"
        >PANTS<span class="arrow-down"
          ><i class="fas fa-arrow-circle-down"></i></span></label>
      <div>
        <ul>
          <li class="menu__inner"><a href="#">skinny</a></li>
          <li class="menu__inner"><a href="#">straight</a></li>
          <li class="menu__inner"><a href="#">side&bootscut</a></li>
        </ul>
      </div>
      <input type="checkbox" id="answer07" />
      <label class="menu__outer" for="answer07"
        >BAG<span class="arrow-down"
          ><i class="fas fa-arrow-circle-down"></i></span
        ></label>
      <div>
        <ul>
          <li class="menu__inner"><a href="#">shoulder bag</a></li>
          <li class="menu__inner"><a href="#">clutch bag</a></li>
          <li class="menu__inner"><a href="#">back pack</a></li>
        </ul>
      </div>
      <input type="checkbox" id="answer08" />
      <label class="menu__outer" for="answer08"
        >SHOES<span class="arrow-down"><i class="fas fa-arrow-circle-down"></i></span>
        </label>
      <div>
        <ul>
          <li class="menu__inner"><a href="#">lofer/flat</a></li>
          <li class="menu__inner"><a href="#">walker/boots</a></li>
          <li class="menu__inner"><a href="#">hell</a></li>
          <li class="menu__inner"><a href="#">sneakers</a></li>
          <li class="menu__inner"><a href="#">sandal/slipper</a></li>
        </ul>
      </div>
      <input type="checkbox" id="answer09" />
      <label class="menu__outer" for="answer09"
        >JEWELRY<span class="arrow-down"
          ><i class="fas fa-arrow-circle-down"></i></span
        ></label>
      <div>
        <ul>
          <li class="menu__inner"><a href="#">earring</a></li>
          <li class="menu__inner"><a href="#">ring</a></li>
          <li class="menu__inner"><a href="#">bracelet</a></li>
          <li class="menu__inner"><a href="#">necklace</a></li>
        </ul>
      </div>
      <div class="navbar__cancelBtn"><i class="fas fa-times"></i></div>
    </nav>
    <div class="navbar_Btn">
    	<div class="navbar__toggleBtn"><i class="fas fa-bars"></i>
    	
       </div>
       <div class="navbar__username">
          <p><strong>${autoInfo.mem_username}</strong>님 <br>안녕하세요!</p>
       </div>
      <div class="navbar__logo2">
        <a href="/Main/Main"><img src="../../../../resources/Img/Main/Side/main_logo.png" alt=""></a>
      </div>
      <div class="navbar__menu">
      
      
      <a class="menu menu1" href="../../Join/memberJoin">
          <i class="fas fa-user-plus"></i>
        	회원가입
       </a>
       
        <a class="menu menu2" href="../../Login/loginMain">
          <i class="fas fa-sign-in-alt"></i>
          	로그인
        </a>
        	
        
        <a class="menu menu3" href="#">
          <i class="fas fa-shopping-cart"></i>
          	장바구니
        </a>
        	

        <a class="menu menu4" href="../../Mypage/MypageMain">
        	<i class="fas fa-user-check"></i>
       		마이페이지
        </a>
    </div>
   </div>
</body>
</html>
</body>
</html>