<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<main>
	<table>
		<thead>
		<tr>
			<td width="100px" align="center">글번호</td>
			<td width="700px" align="center">제목</td>
			<td width="200px" align="center">작성자</td>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="board" items="${list }">
			<tr>
				<td align="center">${board.idx }</td>
				<td><a href="${cpath }/board/read/${board.idx }/">${board.title }</a></td>
				<td align="center">${board.writer }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="paging">
		<c:if test="${prev }">
			<a href="${cpath }/board/${begin - 1}/"
			   style="display: inline;">◀</a>
		</c:if>
		<c:forEach var="page" begin="${begin }" end="${end }">
			<c:if test="${nowPage == page }">
				<b>[${page }]</b>
			</c:if>
			<c:if test="${not (nowPage == page) }">
				<a style="display: inline;" href="${cpath }/board/${page}/">
					[${page }] </a>
			</c:if>
		</c:forEach>
		
		<c:if test="${next }">
			<a href="${cpath }/board/${end + 1}/"
			   style="display: inline;">▶</a>
		</c:if>
	</div>
	
	<div class="bottomMenu">
		<div class="left">
			<form class="boardSearch">
				<select name="search">
					<option>제목</option>
					<option>작성자</option>
					<option>글번호</option>
				</select>
				<input name="word">
				<input type="submit" value="검색">
			</form>
		</div>
		<div class="right">
			<a href="${cpath }/board/write/"><button>새 글 작성</button></a>
		</div>
	</div>
	
</main>
<script>
	const headerHeight = document.querySelector('header').clientHeight;
	const navHeight = document.querySelector('nav').clientHeight;
	const mainHeight = window.innerHeight - headerHeight - navHeight;

	document.querySelector('main').style.height = mainHeight + 'px';
</script>

</body>
</html>