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

<script type="text/javascript">
	function joinSubmit(){
		var userpw1 = document.getElementById('userpw1').value;
		var userpw2 = document.getElementById('userpw2').value;
		
		if (userpw1 != userpw2){
			alert('비밀번호가 일지하지 않습니다...');
			return false;
		}else{
			return true;
		}
	}
</script>
</head>
<body>
    <form id="form" method="POST">
    	<h1>회원가입</h1>
    	<p><input type="text" name="userid" placeholder="ID" required autofocus autocomplete="off"></p>
    	<p><input type="password" id="userpw1" name="userpw" placeholder="PASSWORD" required autofocus autocomplete="off"></p>
    	<p><input type="password" id="userpw2" name="userpw2" placeholder="PASSWORDCONFIRM" reqrequired autofocus autocomplete="off"></p>
    	<p><input type="text" name="username" placeholder="NAME" required autofocus autocomplete="off"></p>
    	<p><input type="submit" onclick="return joinSubmit()" value="회원가입"><input type="reset" value="취소"></p>
    </form>
</body>
</html>