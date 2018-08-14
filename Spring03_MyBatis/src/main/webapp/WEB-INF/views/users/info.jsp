<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/info.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
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
		<h2>회원 정보</h2>
		<a href="${pageContext.request.contextPath }/" class="btn btn-info">처음으로 가기</a>
		
			<table class="table table-border">
				<thead>
					<tr>
						<th>항목</th>
						<th>정보</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>아이디</th>
						<td>${dto.id }</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>${dto.email }</td>
					</tr>
					<tr>
						<th>가입일</th>
						<td>${dto.regdate }</td>
					</tr>
				</tbody>
			</table>
			<a class="btn btn-default" href="users/updateform.do">회원정보 수정</a>
			<a class="btn btn-default" href="javascript:deleteConfirm()">회원 탈퇴</a>
			<script>
				function deleteConfirm(){
					var isDelete=confirm("회원 탈퇴 하시겠습니까?");
					if(isDelete){
						location.href="delete.do";
					}
				}
			</script>
	</div>
</body>
</html>