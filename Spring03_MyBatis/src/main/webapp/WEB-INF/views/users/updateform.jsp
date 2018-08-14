<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/updateform.jsp</title>
<style>
.sig1{
	background-color:#f9c7d9;
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
    <div class="container sig1">
		<h2>회원 정보 수정</h2>
		
			<form action="update.do" method="post" id="updateForm">
				<input type="hidden" name="id" value="${id }"/>
				<label for="id">아이디</label>
				<input type="text" id="id" value="${id }" 
					disabled="disabled"/><br/>
				<label for="email">이메일 주소</label>
				<input type="text" name="email" id="email" 
					value="${dto.email }"/><br/>
				<button type="submit">수정 확인</button>
			</form>
			<a href="pw_changeform.do" class="btn btn-success">비밀번호 변경</a>
	
		
	</div>
</body>
</html>