<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <c:set var="context" value="${pageContext.request.contextPath }"/>
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
	<%-- <link href="${context }/resources/css/style.css" rel='stylesheet' type='text/css' /> --%>
	<link rel="stylesheet" type="text/css" href="resources/css/slider-style.css" />
	<link rel="shortcut icon" type="image/x-icon" href="resources/images/fav-icon.png" />
	<link type="text/css" rel="stylesheet" href="resources/css/jquery.mmenu.all.css" />
	<script type="text/javascript" src="resources/js/modernizr.custom.28468.js"></script>
	<script type="text/javascript" src="js/jquery.cslider.js"></script>
	<script type="text/javascript" src="resources/js/login.js"></script>
	
	<style type="text/css">
		b,input, textarea { font-size:10pt; font-weight:bold; font-family:'맑은고딕' ; }		
		a { font-size:10pt; font-weight:bold; font-family:'맑은고딕'  }
		a:link { text-decoration:none; color:#333333; }
		a:visited { text-decoration:none; color:#333333; }
		a:active { text-decoration:none; color:#333333; }
		a:hover { text-decoration:underline; color:#333333; }		
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
		<div id="container">
				<div class="content_admin">			
			<table style='width:1200px; height:400px;border:1px solid gray;border-collapse: collapse;'>
				<tr style='width:150px'>
					<td style="border:1px solid gray;border-collapse: collapse;">
						<jsp:include page="left_menu.jsp" />
					</td>
					<td style='width:1050px'>
					<c:choose>
					<c:when test="${command eq 'mg_board' }">
						<jsp:include page="mg_board.jsp" />
					</c:when>
					<c:when test="${command eq 'mg_item' }">
						<jsp:include page="mg_item.jsp" />
					</c:when>
					<c:when test="${command eq 'mg_member' }">
						<jsp:include page="mg_member.jsp" />
					</c:when>
					<c:when test="${command eq 'reg_item' }">
						<jsp:include page="reg_item.jsp" />
					</c:when>
					<c:otherwise>
						<jsp:include page="reg_item.jsp" />
					</c:otherwise>
					</c:choose>
					
					
					</td>
				</tr>
			</table>
		
				
			</div>
		</div>

		
			
		</div>

	<!-- Footer -->
	<div id="footer">
		<jsp:include page="../main/footer.jsp"></jsp:include>
	</div>
	<!-- /Footer -->
</body>
</html>