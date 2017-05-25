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
    
	<link rel="stylesheet" type="text/css" href="./resources/css/guest.css" />
        
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
		
		<!-- 본문 내용 -->
			<div id="article">
			
			
			
			<div id="article_c">
			
			 <div id="gList_wrap" style="width:1000px;height:400px;">
			  
			  <div id="gList_count" style="float:right;margin-right: 200px;">총 게시물 수: ${total_count} 개</div>
			  <table id="gList_t" style="width:100%;">
			  <tr style="height: 30px;">
			  	<td colspan="6" style="background-color: gray;color: black"><h2 style="text-align: center;font-size: 20;"> 방 명 록 목 록 </h2></td>
			  </tr>
			   <tr>
			    <th>번호</th> <th>제목</th> <th>내용 </th> <th>작성자</th> <th>등록날짜</th>
			    <th>조회수</th>
			   </tr>
			   <c:forEach var="gList" items="${guestList}">
			     <tr align="center" valign="middle" bordercolor="#333333"
					onmouseover="this.style.backgroundColor='#FFFFCC'"
					onmouseout="this.style.backgroundColor=''">
			      <th>${gList.guest_no}</th>
			      <td style="padding-left:10px;">
			       <a href="guest_cont.do?no=${gList.guest_no}" 
			       onfocus="this.blur();">${gList.guest_title}</a>
			       <!-- *.do?no=번호값은 웹주소창에 값을 노출하면서 get방식으로
			       no피라미터에 글번호를 담아서 넘김. -->
			      </td>
			      <td>${gList.guest_cont}</td>
			      <th>${gList.guest_name}</th>
			      <th>${gList.guest_regdate}</th>
			      <th>${gList.guest_hit}</th>
			     </tr>
			   </c:forEach>
			 
			  </table>
		<div style="margin-left: 380px;padding-top: 70px;" >
		
			  		<input type="button" style="width:200px;" value="글 쓰 기" 
			  onclick="location='guest_write.do'" />
			
			  		
			  	</div> 
			 </div>
			  
			</div><!-- end article_c -->  
			  
			</div><!-- end article -->
			
			<div class="clear"></div>  	
					
		</div>
</div>
	<!-- Footer -->
	<div id="footer">
		<jsp:include page="../main/footer.jsp"></jsp:include>
	</div>
	<!-- /Footer -->
</body>
</html>
