<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
	<c:if test="${empty login}">
		<script>
			alert('${msg}');
			location.href="${cpath}/login";
		</script>
	</c:if>
	<script>
		alert('${login.username }${msg }');
		location.href="${cpath}/";
	</script>
</body>
</html>