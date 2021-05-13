<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/Css/Mypage/mypage.css"/>
</head>
<body>

  <div class="Main container">
  
  		<div>
  		<jsp:include page="../Main/Header_empty.jsp" flush="false" />
		</div>


		<div class="Leftaside">
			<jsp:include page="../Main/Leftaside.jsp" flush="false" />

		</div>
   <div class="Section ">
    <h1>최근본상품</h1>
	<table border="">
		<tbody align=center>
			<tr>
			     <td>상품번호</td>
			     <td>상품명 </td>
				 <td>금액</td>
				 <td>평점</td>
				 <td>장바구니에 추가</td>
				 
			</tr>
			
			<tr>
			<td>${recentlyProduct.it_id}</td>
			<td>
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
            <td>33.000원 </td>
           <td>4.3점</td>
            <td>
            <input type="button" value="추가">
            </td>  
			
			
			
		</tbody>
	</table>
   
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