<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<main>
	<form class="writeForm" method="POST">
		<div>
			<input name="title" value="${dto.title }" placeholder="제목을 입력하세요" required autofocus>
		</div>
		<div>
			<input name="writer" value="${dto.writer }" placeholder="작성자의 이름을 입력하세요" required>
		</div>
		<div>
			<textarea name="context">${dto.context }</textarea>
		</div>
		<div class="bottomMenu">
			<div class="left">
				<input type="button" value="수정 취소" onclick="history.go(-1)">
			</div>
			<div class="right">
				<input type="submit" value="수정">
			</div>
		</div>
	</form>
</main>
<script>
	const headerHeight = document.querySelector('header').clientHeight;
	const navHeight = document.querySelector('nav').clientHeight;
	const mainHeight = window.innerHeight - headerHeight - navHeight;
	
	document.querySelector('main').style.height = mainHeight + 'px';
</script>

</body>
</html>