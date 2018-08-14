<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<style>

.logging{
	padding-top:15px;
	color:#eee;
}
</style>
</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${pageContext.request.contextPath}/">JIHYANG</a>
        </div>
        <div class="navbar-collapse collapse">
        	<ul class="nav navbar-nav navbar-left">
	      		<li class="active"><a href="${pageContext.request.contextPath}/">Home</a></li>
	            <li><a href="${pageContext.request.contextPath}/member/list.do">Member List</a></li>
	        </ul>
         	
         	<ul class="nav navbar-nav navbar-right">
	            <!-- session영역에 id가 비어 있지 않으면 (로그인 된 상태라면) -->
	            <c:choose>
	            	<c:when test="${not empty id }">
	            		<li class="logging"><a href="${pageContext.request.contextPath}/users/info.do">${id }</a>님 로그인 중...</li>
	            		<li><a href="${pageContext.request.contextPath}/users/logout.do">로그아웃</a></li>
	            	</c:when>
	            	<c:otherwise>
	            		<li><a href="${pageContext.request.contextPath}/users/signup_form.do">회원가입</a></li>
						<li><a href="${pageContext.request.contextPath}/users/loginform.do?url=${url }">로그인</a></li>
	            	</c:otherwise>
	            </c:choose>
			</ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
</body>
</html>