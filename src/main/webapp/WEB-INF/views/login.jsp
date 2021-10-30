<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>   
</head>
<body>
    <form id="form" method="POST">
    	<h1>로그인</h1>
    	<p><input type="text" name="userid" placeholder="ID" required autofocus autocomplete="off"></p>
    	<p><input type="password" name="userpw" placeholder="PASSWORD" required autofocus autocomplete="off"></p>
    	<p><input type="submit" value="로그인"><input type="reset" value="취소"></p>
    </form>
</body>
</html>