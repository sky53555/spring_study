<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원 정보 수정폼입니다</h3>
<form action="update.do" method="post">
	<input type="hidden" name="num" value="${dto.num }" />
	<label for="num">번호</label>
	<input type="text" id="num" value="${dto.num }" disabled />
	<br />
	<label for="name">이름</label>
	<input type="text" name="name" id="name" value="${dto.name }" />
	<br />
	<label for="addr">주소</label>
	<input type="text" name="addr" id="addr" value="${dto.addr }" />
	<br />
	<button type="submit">수정확인</button>
</form>


</body>
</html>