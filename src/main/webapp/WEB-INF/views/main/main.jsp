<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Expires" content="-1" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="No-Cache" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta name="viewport" content="width=1024" />
    <meta name="keywords" content="CGV, ��������, ��ȭ��, ����, ��ȭ, Ƽ��, �ڽ����ǽ�, ����, Movie, Theater, Cinema, Cgv, cgv, ����, ����" />
    <meta name="description" content="CGV�� ����ȭ�� ������ȭ�� �ְ��� ���񽺷� ������ ���� �� ���� ������ �����մϴ�. CGVȨ�������� ���� ��ȭ ���ŻӸ� �ƴ϶� �� �̻��� ���񽺿� ������ �����ϰ�, �پ��� ��ſ�� Ư���� ������ �����ϰ��� �մϴ�." />
    <meta property="og:site_name" content="��ȭ �� �̻��� ����. CGV"/>
    <meta id="ctl00_og_title" property="og:title" content="��ȭ �� �̻��� ����. CGV"></meta>
	<meta id="ctl00_og_description" property="og:description" content=""></meta> 
    <meta id="ctl00_og_image" property="og:image" content="http://img.cgv.co.kr/common/cgv_200x200.jpg"></meta>

    <link rel="shortcut icon" href="http://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
    <title id="ctl00_headerTitle">��ȭ �� �̻��� ����. CGV</title>
    <link rel="shortcut icon" type="image/x-icon" href="http://img.cgv.co.kr/R2014/images/favicon.ico" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/reset.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/module.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/common.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/content.css" />
    <link rel="stylesheet" media="print" type="text/css" href="http://img.cgv.co.kr/R2014/css/print.css" />
    <link rel="stylesheet" type="text/css" href="http://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css" />
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/app.config.js"></script>
    <script type="text/javascript" src="/common/js/extraTheaters.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/app.utils.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/app.init.js"></script>
    <!--[if lte IE 9]><script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholder.js"></script><![endif]-->
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>
    <script type="text/javascript" src="../../resources/popup/jquery.superbox-min.js"></script>
    
    <style type="text/css">
		b,input, textarea { font-size:15pt; font-weight:bold; font-family:'�������' ; }
		td { font-size:10pt; font-weight:bold; font-family:'�������'; height: 20; border-bottom-style: solid; border-bottom-width: 1;  }
		a { font-size:10pt; font-weight:bold; font-family:'�������'  }
		a:link { text-decoration:none; color:#333333; }
		a:visited { text-decoration:none; color:#333333; }
		a:active { text-decoration:none; color:#333333; }
		a:hover { text-decoration:underline; color:#333333; }
		tr, td { text-align:center }
	</style>
    
    <!-- �������� Header Start--> 
    
    <!--/�������� Header End--> 
   		<jsp:include page="../main/script.jsp"/>

		<jsp:include page="../main/top_ad.jsp" />
	<!-- Header -->
	<div id="header">
	<c:set var="email" value="${ email }" />
		<jsp:include page="../main/header.jsp" />
	</div>
	<!-- /Header -->
	<!-- Contaniner -->
	<div id="contaniner" class="bg-bricks main bg-bricks"><!-- ���� ����̹��� ��� �� class="bg-bricks" ���� / ����̹����� ���� ��� class ����  -->

        <!-- LineMap -->

        <!-- //LineMap -->

		<!-- Contents Area -->
		<div id="contents" class="">
            
            <!-- Contents Start -->
			
<input type="hidden" id="isOpenUserEmailYNPopup" name="isOpenUserEmailYNPopup" value="False" />
<input type="hidden" id="isTown" name="isTown" value="N" />
<input type="hidden" id="isVip" name="isVip" value="N" />
<div class="sect-common">
	<div class="slider" id="slider">
		<jsp:include page="slider.jsp" />
	</div>
</div>
	<jsp:include page="../main/content.jsp"></jsp:include>
<div class="sect-event">
	<jsp:include page="../main/event.jsp" />
</div>
<div class="cols-banner">
	<jsp:include page="../main/advertisement.jsp" />
</div>

<div id="ctl00_PlaceHolderContent_wrap_notice" class="sect-notice-info cf">
	<jsp:include page="../main/notice.jsp" />
</div>

            <!--/ Contents End -->

		</div>
		<!-- /Contents Area -->
	</div>
	<!-- /Contaniner -->
	<!-- Footer -->
	<div id="footer">
		<jsp:include page="../main/footer.jsp"></jsp:include>
	</div>
	<!-- /Footer -->

    <!-- Aside Banner :  -->
	<div id="ctl00_sect_person_right" class="sect-aside-banner" style="padding:0; margin:0; position:fixed; z-index:1;">
		<div class="aside-content-top">
			<div class="aside-content-btm">
				<a href="#" onclick="setClickLog('/����/����ũ/CGV����');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_theater.gif" alt="CGV THEATER" /></a>
				<a href="#" onclick="setClickLog('/����/����ũ/CGV�̺�Ʈ');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_arthouse.gif" alt="CGV arthouse" /></a>
				<a href="#" onclick="setClickLog('/����/����ũ/CGVƯ����');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_special.gif" alt="CGV SPECIAL" /></a>
				<a href="#" target="_blank"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_phototicket.gif" alt="CGV ����Ƽ��" /></a>
				<a href="#" class="required-login" data-url="/user/mycgv/reserve/" onclick="setClickLog('/����/����ũ/CGV���ų���');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_ticket.gif" alt="CGV TICKET INFO" /></a>
				<a href="#" onclick="setClickLog('/����/����ũ/CGV��������');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_discount.gif" alt="CGV DISCOUNT INFO" /></a>
			</div>
		</div>
		<div class="btn-top">
			<a href="#" onclick="scrollTo(0,0);return false;" onclick="setClickLog('/����/����ũ/TOP��ư);"><span>�ֻ������ �̵�</span></a>
		</div>
	</div>
	<!-- //Aside Banner -->
    
</div>


<!-- ������� ����±� -->
<script type="text/javascript" language="javascript" src="http://img.cgv.co.kr/common/js/insightIS.js"></script>

</body>
</html>