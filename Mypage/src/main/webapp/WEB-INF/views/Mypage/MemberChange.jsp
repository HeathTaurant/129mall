<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <h2>회원정보수정</h2>
    *는 필수입력항목 <br><br>
    <c:if test="${! empty autoInfo }">
    아이디 ${autoInfo.mem_userid }
    </c:if> <hr> 
  	
  	
  	<form action="/Mypage/MypageMain" method="post">
    
   <table>
              <colgroup>
                <col style="width:150px;">
                <col style="width:auto;">
              </colgroup>
              
              <tr>
                <th>비밀번호*</th>
                <td><input type="password" class="member_password" id="member_password"
                    name="mem_password" value="${autoInfo.mem_password}" />
                    &nbsp;<span id="txt">영문 대소문자/숫자/특수문자 중 2가지 이상 조합,8자~16자리  </span>
                  <font id="chkpw"></font>
                </td>
              </tr>
              
              <tr>
                <th>이름*</th>
                <td><input type="text" class="member_name" id="member_name" name="mem_username" 
                value="${autoInfo.mem_username}"/></td>
              </tr>
              
             
              <tr>
                <th>휴대전화*</th>
                <td>
                  <select name="num1" class="num1">
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="016">016</option>
                    <option value="017">017</option>
                    <option value="018">018</option>
                    <option value="019">019</option>
                  </select> -
                  <input type="text" maxlength="4" class="mobile num2" id="member_num2" name="mem_num2" /> -
                  <input type="text" maxlength="4" class="mobile num3" id="member_num3" name="mem_num3" />
                </td>
              </tr>
              <tr>
                <th>이메일*</th>
                <td>
                  <input type="text" class="member_email" id="member_email" name="mem_email" 
                  value="${autoInfo.mem_email}" />
                  <font id="emailchk"></font>
                </td>
              </tr>
            </table><hr>
   
   
  
   
   			  
   <input type="submit" value="회원 정보 수정 ">
   <input type="reset" value="취소">
   </form>
  	
  
   

   
   
    
    </div>
  
    
   </div>
</body>
</html>