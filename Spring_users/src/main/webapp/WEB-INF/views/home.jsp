<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<style>
*{
	padding:0;
	margin:0;
}

.con1{
	padding-top:200px;
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
            <li><a href="users/loginform.do">로그인</a></li>
            <li><a href="users/signupform.do">회원가입</a></li>
           
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container con1">

      <!-- Main component for a primary marketing message or call to action -->
     
        <h1>Hi there!</h1>
        <p>This example is a quick exercise to illustrate how the default, static and fixed to top navbar work. It includes the responsive CSS and HTML, so it also adapts to your viewport and device.</p>
        <p>To see the difference between static and fixed top navbars, just scroll.</p>
        <p>
          <a class="btn btn-lg btn-primary" href="#" role="button">MORE &raquo;</a>
        </p>
 

    </div> <!-- /container -->

</body>
</html>