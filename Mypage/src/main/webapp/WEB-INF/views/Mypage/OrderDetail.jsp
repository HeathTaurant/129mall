<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="mypage.css"/>
</head>
<body>

  <div class="container">
   
   <div class="section">
    <h1>주문내역</h1>
	
	<table>
      <tbody align="center" >
      <tr>
        <td>
          <form method="post" action="">
            <input type="submit" value="1주일">
          </form>
        </td>
        
        <td>
          <form method="post" action="">
            <input type="submit" value="1개월">
          </form>
        </td>
        
        <td>
          <form method="post" action="">
            <input type="submit" value="3개월">
          </form>
        </td>
        
        <td><input type="date">--<input type="date"></td>
        <td>
          <form method="post" action="">
            <input type="submit" value="조회">
          </form>
        </td>
        
      </tr>
      </tbody>
     </table>


	<table border="">
		<tbody align=center>
			<tr>
			     <td>주문번호 </td>
			     <td>주문일자 </td>
				<td colspan=2 class="fixed">주문상품명</td>
				<td>수량</td>
				<td>옵션</td>
				<td>주문금액</td>
				<td>배송비</td>
				<td>예상적립금</td>
				<td>주문금액합계</td>
				<td>배송상태</td>
			</tr>
			<tr>
             <td>111000</td>
			     <td>2021-04-18 </td>
				<td colspan=2 class="fixed">
				 <figure>
                  <img src="https://encrypted-tbn0.gstatic.com/
                            shopping?q=tbn:ANd9GcTzmyBiXNA7EAc1C3wNefJ
                            -RAtgQ8raDoKfN7EhpcL0vZF07Cic3L0DI13R6JLkNiMR
                            ZgHJM6ZPPaSXT6vfeMh8CWt
                            8S3AW56VctHJMcXU&usqp=CAE"
                       width="200px"> 
				<figcaption>브라운 가디건</figcaption>
				</figure>
                 </td>
				<td>1</td>
                   <td>S </td>
				<td>33,000원</td>
				<td>2500원</td>
				<td>330p</td>
				<td>35,500원</td>
				<td>배송중
				<form method="post" action="">
				<input type="submit" value="배송취소" name="ordercancel">
				</form>
				
				</td>	
			</tr>
			
		</tbody>
	</table>
	<hr>
	<h3>배송지 정보</h3>
    서울 특별시 강남구 압구정로 113-1 은미아파트 
   
  </div>
    
    
   </div>


</body>
</html>