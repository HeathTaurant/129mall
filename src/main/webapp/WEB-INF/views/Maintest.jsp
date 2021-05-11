<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${! empty autoInfo }">
		<p>${autoInfo.mem_username}님, 환영합니다.</p>
		<p>아이디 : ${autoInfo.mem_userid }</p>
		<p>비밀번호 : ${autoInfo.mem_password }</p>
		<p>
			<a href="<c:url value="/logout" />">[로그아웃]</a>
		</p>
	</c:if>
</body>
</html>