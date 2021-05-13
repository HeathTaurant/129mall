<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../../resources/Css/Main/Side/Main.css">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="mypage.css"/>
 --></head>
<body>

  <div class="Main container">
   <div class="Header">
		<jsp:include page="../Main/Header_empty.jsp" flush="false" />
		</div>


		<div class="Leftaside">
			<jsp:include page="../Main/Leftaside.jsp" flush="false" />

		</div>
   <div class="Section">
    <h1>장바구니</h1>
	<table border="">
		<tbody align=center>
			<tr>
			    
			    <td>구분</td>
			    <td>상품번호</td>
			    <td colspan=2 class="fixed">상품명</td>
				<td>수량</td>
				<td>사이즈</td>
				
				<td>배송비</td>
				<td>예상적립금</td>
				<td>합계</td>
				<td>삭제</td>
			</tr>
			
			<tr>
			<td> <input type="checkbox" name="CartCheck"></td>
             
             <td>${itemRequestDto.it_id}</td>
				<td colspan=2 class="fixed">
                
				${itemRequestDto.it_name}<br>
				색상:${itemRequestDto.it_color}<br>
				 ${itemRequestDto.it_price}원<br>
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
               ${itemRequestDto.it_size}
                  </td>
				
				<td>2500원</td>
				<td>${itemRequestDto.it_price*0.05}</td>
                
                <td>${itemRequestDto.it_price}원</td>
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
       선택 상품 금액 ${itemRequestDto.it_price}원 <br>
       배송비 2500원 <br>
       적립포인트:${itemRequestDto.it_price*itemRequestDto.it_sell_count*0.05} <br>  
       할인 금액 <br><br><br>
       총 주문 금액 ${itemRequestDto.it_price*itemRequestDto.it_sell_count}원
  
  <form method="post" action="Pay.jsp">
  <input type="submit" value="주문하기 " name="">
  
  </form>   	 
  </aside>
  
    </div>
  		<div class="Rightaside">
			<jsp:include page="../Main/Rightaside.jsp" flush="false" />
		</div>

		<div class="Footer">
			<jsp:include page="../Main/Footer.jsp" flush="false" />
		</div>
   
   </div>
	  
	 

</body>
</html>