<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginForm</title>
<style>

.container1{
	width:50% !important;
	margin-left:25%;
}
.sig1{
	background-color:#e0f9bd;
	border-radius:10px;
	text-align:center;
	margin-top:100px;
	padding-bottom:30px;

}

h2{
	padding:20px 0;
}
</style>
<%@include file="../css_loading.jsp" %>
</head>
<body>

<%@include file="../header.jsp" %>
 <div class="container1 sig1">
		<h2>로그인</h2>
		
			<form action="login.do?url=${url }" method="post" id="loginForm">
				<p><label for="id">아이디</label></p>
				<p><input type="text" name="id" id="id" /></p>
				<p><label for="pwd">비밀번호</label></p>
				<p><input type="password" name="pwd" id="pwd" /></p>
				<button type="submit">SEND</button>
				<span id="checkResult"></span>
			</form>
	</div>


</body>
</html>