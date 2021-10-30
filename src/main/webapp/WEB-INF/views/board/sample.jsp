<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<main>

</main>
<script>
	const headerHeight = document.querySelector('header').clientHeight;
	const navHeight = document.querySelector('nav').clientHeight;
	const mainHeight = window.innerHeight - headerHeight - navHeight;
	
	document.querySelector('main').style.height = mainHeight + 'px';
</script>

</body>
</html>