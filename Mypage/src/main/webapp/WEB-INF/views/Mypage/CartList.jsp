<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="mypage.css"/>
</head>
<body>

  <div class="container">
   
   <div class="section ">
    <h1>장바구니</h1>
	<table border="">
		<tbody align=center>
			<tr>
			    
			    <td>구분</td>
			    <td>상품번호</td>
			    <td colspan=2 class="fixed">상품명</td>
				<td>수량</td>
				<td>옵션</td>
				
				<td>배송비</td>
				<td>예상적립금</td>
				<td>합계</td>
				<td>삭제</td>
			</tr>
			
			<tr>
			
			<td> <input type="checkbox" name="CartCheck"></td>
             
             <td>112233</td>
				<td colspan=2 class="fixed">
                <figure>
                  <img src="https://encrypted-tbn0.gstatic.com/
                            shopping?q=tbn:ANd9GcTzmyBiXNA7EAc1C3wNefJ
                            -RAtgQ8raDoKfN7EhpcL0vZF07Cic3L0DI13R6JLkNiMR
                            ZgHJM6ZPPaSXT6vfeMh8CWt
                            8S3AW56VctHJMcXU&usqp=CAE"
                       width="200px"> 
				<figcaption>브라운 가디건</figcaption><br>
				</figure>
				 33,000원<br>
                 </td>
				
				<td>
                  <select name="amount">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    </select>
                  </td>
           
            <td>
                  <select name="size">
                    <option value="S">S</option>
                    <option value="M">M</option>
                    <option value="L">L</option>
                    <option value="XL">XL</option>
                    </select>
                  </td>
				
				<td>2500원</td>
				<td>330p</td>
                
                <td>35,500원</td>
                <td>
               
                <form method="post" action="">
             	<input type="submit" value="삭제">
                </form>
                </td>
			</tr>
		
		</tbody>
	</table>
	
  <aside>
  	  
    <h2>결제정보</h2> <hr>
       선택 상품 금액  33,000원 <br>
       배송비 2500원 <br>
       적립포인트<br>  
       할인 금액 <br><br><br>
       총 주문 금액  35,500원
  
  <form method="post" action="Pay.jsp">
  <input type="submit" value="주문하기 " name="">
  
  </form>   	 
  </aside>
  
    </div>
  
   
   </div>
	  
	 

</body>
</html>