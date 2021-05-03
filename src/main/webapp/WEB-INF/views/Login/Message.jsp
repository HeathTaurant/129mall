<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
</head>
	<th:block th:if="${#strings.length(data.message) !=0 }">
		<script>
			top.alert("[[${data.message}]]");
		</script>
	</th:block>
</html>