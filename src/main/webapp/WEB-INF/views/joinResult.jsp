<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
</head>
<body>
	<script>
		<c:if test="${1 ne rowNum }">
			alert('${msg }');
			location.href="${cpath}/join/";
		</c:if>
		
		<c:if test="${1 eq rowNum}">
			alert('${msg}');
			location.href="${cpath}/";
		</c:if>
	</script>
</body>
</html>