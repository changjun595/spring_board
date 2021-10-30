<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/78bcb2230c.js" crossorigin="anonymous"></script>
    <!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>-->
    <!--  <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"> -->
</head>
<style>
*{
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}
a{
	text-decoration: none;
	color:black;
}
li{
	list-style: none;
}
form{
    margin-left: auto;
    margin-right: auto;
}
input[type="text"], input[type="password"] {
    width: 80%;
    font-size: 20pt;
    padding: 5px;
    margin: 5px;
}
input[type="submit"], input[type="reset"] {
    background-color: #73aace;
    color: white;
    font-size: 10pt;
    font-weight: bold;
    margin: 20px;
    padding: 10px;
    border: 1px solid black;
    cursor: pointer;
}
#form{
    margin-top: 50px;
    width: 500px;
    padding-top: 40px;
    text-align: center;
    background-color: white;
    border-radius: 18px;
}
#navbar{
    background-color: #73aace;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 16px;    
}
.login{
	text-align: right;
	margin-right: 12px;
}
.navbar__logo{
    font-size: 28px;
}
.navbar__menu{
    display: flex;
}
.navbar__menu__item{
    padding: 8px 12px;
    margin: 0px 4px;
    cursor: pointer;
}

</style>
<body>
    <header id="head">
    	<div class="login"">
        	<c:if test="${not empty login }">
        		${login.username } (${login.userid })
        	</c:if>
        </div>
        <nav id="navbar">
            <div class="navbar__logo">
                <i class="fas fa-desktop"></i>
            </div>
            <div class="navbar__menu">
                <ul class="navbar__menu">
                    <li class="navbar__menu__item"><a href="${cpath }/${empty login? 'login' : 'logout' }/">${empty login ? '로그인' : '로그아웃'}</a></li>
                    <li class="navbar__menu__item"><a href="${cpath }/join/">회원가입</a></li>
                    <li class="navbar__menu__item"><a href="${cpath }/board/">게시판</a></li>
                </ul>
            </div>
        </nav>
    </header>
</body>
</html>