<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <c:set var="context" value="${pageContext.request.contextPath }"/>    
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Expires" content="-1" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="No-Cache" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta name="viewport" content="width=1024" />
    <meta name="keywords" content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작" />
    <meta name="description" content="CGV는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. CGV홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다." />
    <meta property="og:site_name" content="영화 그 이상의 감동. CGV"/>
    <meta id="ctl00_og_title" property="og:title" content="영화 그 이상의 감동. CGV"></meta>
	<meta id="ctl00_og_description" property="og:description" content=""></meta> 
    <meta id="ctl00_og_image" property="og:image" content="http://img.cgv.co.kr/common/cgv_200x200.jpg"></meta>

    <link rel="shortcut icon" href="http://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
    <title id="ctl00_headerTitle">영화 그 이상의 감동. CGV</title>
    <link rel="shortcut icon" type="image/x-icon" href="http://img.cgv.co.kr/R2014/images/favicon.ico" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/reset.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/module.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/common.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/content.css" />
    <link rel="stylesheet" media="print" type="text/css" href="http://img.cgv.co.kr/R2014/css/print.css" />
    
	<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
	<link href="${context }/resources/css/style.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" type="text/css" href="resources/css/slider-style.css" />
	<link rel="shortcut icon" type="image/x-icon" href="resources/images/fav-icon.png" />
	<link type="text/css" rel="stylesheet" href="resources/css/jquery.mmenu.all.css" />
	<script type="text/javascript" src="resources/js/modernizr.custom.28468.js"></script>
	<script type="text/javascript" src="js/jquery.cslider.js"></script>
	<script type="text/javascript" src="resources/js/login.js"></script>
	
	<style type="text/css">
		b,input, textarea { font-size:15pt; font-weight:bold; font-family:'맑은고딕' ; }
		td { font-size:10pt; font-weight:bold; font-family:'맑은고딕'; height: 20; border-bottom-style: solid; border-bottom-width: 1;  }
		a { font-size:10pt; font-weight:bold; font-family:'맑은고딕'  }
		a:link { text-decoration:none; color:#333333; }
		a:visited { text-decoration:none; color:#333333; }
		a:active { text-decoration:none; color:#333333; }
		a:hover { text-decoration:underline; color:#333333; }
		tr, td { text-align:center }
	</style>
	
	</head>
<body>
	<div class="wrap">
		<jsp:include page="../main/top_ad.jsp" />
		<!-- Header -->
		<div id="header">
		<jsp:include page="../main/header.jsp" />
		</div>
		<!-- /Header -->
		
		<div class="member-grids">
			<div class="member-grid">
				<a href="#"><img src="./resources/img/about-testpeople1.png" alt=""></a>
				<p>Flathost servers are having high physical security and power
					redundancy Your data will be secure with us.</p>
				<a href="#">IL WI</a>
			</div>
			<div class="member-grid">
				<a href="#"><img src="./resources/img/about-testpeople2.png" alt=""></a>
				<p>With our ultra mordern servers and optical cables, your data
					will be transfered to end user in milliseconds.</p>
				<a href="#">JEONG GWAN</a>
			</div>
			<div class="member-grid">
				<a href="#"><img src="./resources/img/about-testpeople3.png" alt=""></a>
				<p>We have a dedicated team of support for sales and support to
					help you in anytime. You can also chat with us.</p>
				<a href="#">CHEOL HEE</a>
			</div>
			
			<p style="color:white;">test</p>
			<p style="color:white;">test</p>
			
			
			<div class="member-grid">
				<a href="#"><img src="./resources/img/about-testpeople2.png" alt=""></a>
				<p>We have a dedicated team of support for sales and support to
					help you in anytime. You can also chat with us.</p>
				<a href="#">SEONG SU</a>
			</div>
			<div class="member-grid">
				<a href="#"><img src="./resources/img/about-testpeople1.png" alt=""></a>
				<p>We have a dedicated team of support for sales and support to
					help you in anytime. You can also chat with us.</p>
				<a href="#">SEONG WOO</a>
			</div>
			<div class="member-grid">
				<a href="map.do"><img src="./resources/img/about-map.png" alt=""></a>
					
				<p>회사지도보기</p>
				<a href="#">지도</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!-- Footer -->
	<div id="footer">
		<jsp:include page="../main/footer.jsp"></jsp:include>
	</div>
	<!-- /Footer -->


	<script type="text/javascript">
							$
		(window).load(function() {
			$(".flexiselDemo3").flexisel({
				visibleItems : 5,
				animationSpeed : 1000,
				autoPlay : true,
				autoPlaySpeed : 3000,
				pauseOnHover : true,
				enableResponsiveBreakpoints : true,
				responsiveBreakpoints : {
					portrait : {
						changePoint : 480,
						visibleItems : 1
					},
					landscape : {
						changePoint : 640,
						visibleItems : 2
					},
					tablet : {
						changePoint : 768,
						visibleItems : 3
					}
				}
			});
		});
		$(function() {
			$('nav#menu-left').mmenu();
		});
	</script>
</body>
</html>

