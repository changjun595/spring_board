<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<main>
	<div class="readBoard">
		<div>
			<strong>글번호</strong> : ${dto.idx }
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<strong>제목</strong> : ${dto.title }
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<strong>작성자</strong> : ${dto.writer }
		</div>
		<div class="boardContext" style="width: 80%; min-height: 300px;">
			<p style="text-align: left"><strong>내용</strong></p>
			${dto.context }
		</div>
		<div class="bottomMenu">
			<div class="left">
				<input type="button" value="목록" onclick="history.go(-1)">
			</div>
			<div class="right">
				<a href="${cpath }/board/modify/${dto.idx}/">
					<input type="button" value="수정">
				</a>
				<a href="${cpath }/board/delete/${dto.idx}/">
					<input type="button" value="삭제">
				</a>
			</div>
		</div>
	</div>
</main>
<script>
	const headerHeight = document.querySelector('header').clientHeight;
	const navHeight = document.querySelector('nav').clientHeight;
	const mainHeight = window.innerHeight - headerHeight - navHeight;
	
// 	document.querySelector('main').style.height = mainHeight + 'px';
</script>

</body>
</html>