<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/pw_updateform.jsp</title>
</head>
<body>
<h3>비밀번호 변경</h3>
<p>현재 비밀번호를 입력한후 새로 사용할 비밀번호를 입력하세요.</p>
<form action="pw_update" method="post">
	<label for="currentPwd">현재 비밀번호</label>
	<input type="password" name="currentPwd" id="currentPwd" />
	<span id="currentCheck"></span>
	<br />
	<label for="pwd">새 비밀번호</label>
	<input type="password" name="pwd" id="pwd"/>
	<span id="pwdCheck"></span>
	<br />
	<label for="pwd2">새 비밀번호 확인</label>
	<input type="password" name="pwd2" id="pwd2" />
	<br />
	<button type="submit">확인</button>
	<button type="reset">취소</button>
</form>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>
<script>
	//현재 비밀번호 입력란에 포커스를 잃었을 때 호출되는 함수 등록
	$("#currentPwd").on("blur", function(){
		//현재까지 입력한 비밀번호 읽어오기
		var inputPwd=$(this).val();
		//ajax요청을 통해서 현재 비밀번호가 맞는지 확인한다.
		$.ajax({
			url:"pwd_check.do",
			method:"post",
			data:{inputPwd:inputPwd},
			success:function(responseDate){
				if(responseDate.isChecked){
					$("#currentCheck")
					.css("color","skyblue")
					.text("현재 비밀번호 입력됨")
				}else{
					$("#currentCheck")
					.css("color","red")
					.text("현재 비밀번호가 틀렸습니다")
					
				}
			}
		})
	});
</script>
</body>
</html>