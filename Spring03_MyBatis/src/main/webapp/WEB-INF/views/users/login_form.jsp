<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<style>
.sig1{
	background-color:#e0f9bd;
	width:50%;
	border-radius:10px;
	text-align:center;
	margin-top:100px;
	padding-bottom:30px;

}

h2{
	padding:20px 0;
}
</style>
</head>
<body>

</head>
<body>
    
    <div class="container sig1">
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