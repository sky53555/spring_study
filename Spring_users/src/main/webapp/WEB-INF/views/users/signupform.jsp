<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signupform</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<style>
.sig1{
	background-color:#e7d1fc;
	width:50%;
	border-radius:10px;
	text-align:center;
	margin-top:100px;
	padding-bottom:30px;

}
.sig1 h2{
	padding:30px;
}


</style>
</head>
<body>

<!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top nav1">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">MY HOME</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${pageContext.request.contextPath}/">MY HOME</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="loginform.do">로그인</a></li>
            <li><a href="signupform.do">회원가입</a></li>
           
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
    <div class="container sig1">
		<h2>회원가입</h2>
		
			<form action="signup.do" method="post">
				<p>
				<label for="id">아이디</label>
				<input type="text" name="id" id="id" />
				</p>
				<p>
				<label for="pwd">비밀번호</label>
				<input type="password" name="password" id="password" />
				</p>
				<label for="email">이메일</label>
				<p>
				<input type="email" name="email" id="email" />
				</p>
				<button type="submit">SEND</button>
			</form>
	</div>
</body>
</html>