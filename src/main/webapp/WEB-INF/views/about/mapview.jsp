<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
        <c:set var="context" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
	</head>
	<body>
	<div class="wrap">
		<jsp:include page="../main/top_ad.jsp" />
		<!-- Header -->
		<div id="header">
		<jsp:include page="../main/header.jsp" />
		</div>
		<!-- /Header -->
		<div class="map" style="margin-left: 10%; margin-right: 20%;">
			<b><h1>찾아 오시는 길 &nbsp;&nbsp;ye:SOOL 신촌점</h1></b> <br>
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.102928491936!2d126.93691489503749!3d37.552638703136424!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0xf5270b2506be3e49!2zKOyjvCntlZzruZvsnbTsl5TslYTsnbQ!5e0!3m2!1sko!2skr!4v1422942568154"
				width="1200px;" height="520" frameborder="0" style="border:0">
			</iframe>
			
			<br></br>
		</div>
	
	
	<!-- Footer -->
	<div id="footer">
		<jsp:include page="../main/footer.jsp"></jsp:include>
	</div>
	<!-- /Footer -->
	
	</div>

</body>
</html>