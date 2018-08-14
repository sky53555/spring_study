<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>home.jsp</title>
<meta charset="UTF-8">
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<style>
	.carousel-fullscreen .carousel-inner .item {
    height: 100vh; 
    min-height: 600px; 
    background-position: center center; 
    background-repeat: no-repeat; 
    background-size: cover;
}

/* carousel fullscreen - vertically centered caption*/

.carousel-fullscreen .carousel-caption {
    top: 50%;  
    bottom: auto;
    -webkit-transform: translate(0, -50%); 
    -ms-transform: translate(0, -50%); 
    transform: translate(0, -50%);
}

.overlay {
    position: absolute;
    width: 100%;
    height: 100%;
    background: #000;
    opacity: 0.3;
    transition: all 0.2s ease-out;
}

.carousel-fade .carousel-inner .item {
    -webkit-transition-property: opacity;
    transition-property: opacity;
}
.carousel-fade .carousel-inner .item,
.carousel-fade .carousel-inner .active.left,
.carousel-fade .carousel-inner .active.right {
    opacity: 0;
}
.carousel-fade .carousel-inner .active,
.carousel-fade .carousel-inner .next.left,
.carousel-fade .carousel-inner .prev.right {
    opacity: 1;
}
.carousel-fade .carousel-inner .next,
.carousel-fade .carousel-inner .prev,
.carousel-fade .carousel-inner .active.left,
.carousel-fade .carousel-inner .active.right {
    left: 0;
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
}
.carousel-fade .carousel-control {
    z-index: 2;
}
.navbar a:hover{
	color:red;
}

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
          <a class="navbar-brand" href="#">JIHYANG</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="member/list.do">회원 목록 보기</a></li>
             <!-- session영역에 id가 비어 있지 않으면 (로그인 된 상태라면) -->
            <c:choose>
            	<c:when test="${not empty id }">
            		<li class="logging"><a href="users/info.do">${id }</a>님 로그인 중...</li>
            		<li><a href="users/logout.do">로그아웃</a></li>
            	</c:when>
            	<c:otherwise>
            		<li><a href="users/signup_form.do">회원가입</a></li>
					<li><a href="users/login_form.do?url=${url }">로그인</a></li>
            	</c:otherwise>
            </c:choose>
		
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>


	       <div id="carousel-example-generic2" class="carousel slide carousel-fullscreen carousel-fade" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic2" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic2" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic2" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active" style="background-image: url('${pageContext.request.contextPath}/resources/img/img5.jpg');">
                    <div class="overlay"></div>
                    <div class="carousel-caption">
                        <h1 class="super-heading">MAYBE, SOMEDAY COULD BE A DVELOPER?</h1>
                        <p class="super-paragraph">not really sure</p>
                        
                      
                    </div>
                </div>
                <div class="item" style="background-image: url('${pageContext.request.contextPath}/resources/img/img2.jpg');">
                    <div class="overlay"></div>
                    <div class="carousel-caption">
                        <h1 class="super-heading">MAYBE, SOMEDAY COULD BE A DVELOPER???</h1>
                        <p class="super-paragraph">not really sure</p>
                      
                    </div>
                </div>
                <div class="item" style="background-image: url('${pageContext.request.contextPath}/resources/img/img1.jpg');">
                    <div class="overlay"></div>
                    <div class="carousel-caption">
                        <h1 class="super-heading">MAYBE, SOMEDAY COULD BE A DVELOPER?????</h1>
                        <p class="super-paragraph">not really sure</p>
                      
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic2" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic2" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

	
	

	<div class="container">
		<div class="row centered mt mb">
			<h2>SOMETHING</h2>
			
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
				<a href="#"><img src="${pageContext.request.contextPath}/resources/img/portfolio/folio01.png" class="img-responsive"></a>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
				<a href="#"><img src="${pageContext.request.contextPath}/resources/img/portfolio/folio02.png" class="img-responsive"></a>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
				<a href="#"><img src="${pageContext.request.contextPath}/resources/img/portfolio/folio03.png" class="img-responsive"></a>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
				<a href="#"><img src="${pageContext.request.contextPath}/resources/img/portfolio/folio04.png" class="img-responsive"></a>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
				<a href="#"><img src="${pageContext.request.contextPath}/resources/img/portfolio/folio05.png" class="img-responsive"></a>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
				<a href="#"><img src="${pageContext.request.contextPath}/resources/img/portfolio/folio06.png" class="img-responsive"></a>
			</div>
		</div>
	</div>
	
	<div id="social">
		<div class="container">
			<div class="row centered">
				<div class="col-lg-2">
					<a href="#"><i class="fa fa-dribbble"></i></a>
				</div>
				<div class="col-lg-2">
					<a href="#"><i class="fa fa-facebook"></i></a>
				</div>
				<div class="col-lg-2">
					<a href="#"><i class="fa fa-twitter"></i></a>
				</div>
				<div class="col-lg-2">
					<a href="#"><i class="fa fa-linkedin"></i></a>
				</div>
				<div class="col-lg-2">
					<a href="#"><i class="fa fa-instagram"></i></a>
				</div>
				<div class="col-lg-2">
					<a href="#"><i class="fa fa-tumblr"></i></a>
				</div>
			
			</div>
		</div>
	</div>

	<div id="footerwrap">
		<div class="container">
			<div class="row centered">
				<div class="col-lg-4">
					<p><b>MAYBE, SOMEDAY COULD BE A EVELOPER</b></p>
				</div>
			
				<div class="col-lg-4">
					<p>Living in the amazing SEOUL</p>
				</div>
				<div class="col-lg-4">
					<p>sky5355@naver.com</p>
				</div>
			</div>
		</div>
	</div>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script>
    $('#carousel-example-generic').carousel({
    	  interval: 3000,
    	  pause: null
    	})
    </script>
</body>
</html>