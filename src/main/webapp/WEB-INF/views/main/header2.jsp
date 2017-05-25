<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath }"/>
<link href="${context }/resources/css/style.css" rel='stylesheet' type='text/css' />
    
           
<div class="head">	
			<h1><a href="main.do" onclick="setClickLog('/메인/GNB/로고');"><img src="http://img.cgv.co.kr/R2014/images/title/h1_cgv.png" alt="CGV" /></a></h1>
			<div class="sect-service">
				<h2>서비스 메뉴</h2>
				<!-- <ul class="util">
					<li><a href="http://section.cgv.co.kr/event/appRenewal/default.aspx" class="app" target="_blank" title="CGV앱 4.0 설치 새창"  onclick="setClickLog('/GNB/CGV앱4.0설치');"><span>CGV앱 4.0 설치</a></li>
					<li><a href="https://www.facebook.com/CJCGV" class="like" target="_blank" title="Facebook 좋아요! 새창" onclick="setClickLog('/GNB/Facebook좋아요!');"><span>Facebook 좋아요!</span></a></li>
					<li><a href="/discount/" class="frugal" onclick="setClickLog('/GNB/알뜰한영화관랍법!');"><span>알뜰한 영화관람법!</span></a></li> 할인카드
				</ul> -->
			
				<ul style='list-style-type:none'>
                	<!--  로그인 실패시 -->
                    <li style='display:inline'><a href="login_page.do" ><span>로그인 | </span></a></li>
                    <li style='display:inline'><a href="sign_page.do" ><span>회원가입 | </span></a></li>
                    <li style='display:inline'><a href="board_form.do">게시판 | </a></li>
					<li style='display:inline'><a href="${context }/guest.do">방명록 | </a></li>
					<li style='display:inline'><a href="${context }/about.do">회사소개 | </a></li>
				</ul>	
			
			</div>
                 
            <div class="im-wrap"> <!-- Important wrap -->
				<h2><img src="http://img.cgv.co.kr/R2014/images/title/h2_cultureplex.png" alt="CULTUREPLEX" /></h2>
				<!-- Local Navigation Bar -->
				<div class="lnb">
					<h2>CGV 주메뉴</h2>
					<ul id="gnb_list">
						<li class="movie"><a href="itemList.do">영화</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="#" onclick="setClickLog('/GNB/영화/무비차트');">무비차트</a></li>
										<li><a href="#" onclick="setClickLog('/GNB/영화/HD트레일러');">HD 트레일러</a></li>
										<li><a href="#" onclick="setClickLog('/GNB/영화/무비파인더');">무비파인더</a></li>
										<li><a href="#" onclick="setClickLog('/GNB/영화/평점');">평점</a></li>
										<li class="last"><a href="/arthouse/" onclick="setClickLog('/GNB/영화/아트하우스');">CGV아트하우스</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="booking"><a href="javascript:alert('준비중입니다 ^^;');">예매</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/ticket/" onclick="setClickLog('/GNB/예매/빠른예매');">빠른예매</a></li>
										<li><a href="/reserve/show-times/" onclick="setClickLog('/GNB/예매/상영시간표');">상영시간표</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="theaters"><a href="javascript:alert('준비중입니다 ^^;');">극장</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/theaters/" onclick="setClickLog('/GNB/극장/CGV극장');">CGV 극장</a></li>
										<li><a href="/theaters/special/" onclick="setClickLog('/GNB/극장/특별관');">특별관</a></li>
										<li class="last"><a href="#" title="새창" class="specialclub" onclick="setClickLog('/GNB/극장/특별관Club');">특별관 Club</a></li>
									</ul>
								</div>
							</div>
						</li>
                        <li class="culture"><a href="javascript:alert('준비중입니다 ^^;');">이벤트&amp;컬쳐</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/culture-event/event/" onclick="setClickLog('/GNB/이벤트');">이벤트</a></li>
										<li><a href="/culture-event/culture-shop/" onclick="setClickLog('/GNB/팝콘 스토어');">팝콘 스토어</a></li>
										<li><a href="/magazine/" onclick="setClickLog('/GNB/매거진');">매거진</a></li>
										<li><a href="/culture-event/cultureplex/" onclick="setClickLog('/GNB/컬처플렉스');">컬처플렉스</a></li>
										
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- /Local Navigation Bar -->
                <!-- Integrated search(통합검색) -->
                <div class="sect-srh">
					<h2>통합검색서비스</h2>
					<fieldset>
						<legend>통합검색</legend>
						<input type="text" title="통합검색" id="header_keyword" name="header_keyword" minlength="2" maxlength="20" />
                        <input type="hidden" id="header_ad_keyword" name="header_ad_keyword" />
						<button type="button" class="btn-go-search" id="btn_header_search" onblur="setClickLog('/GNB/검색아이콘');">검색</button>
                        <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Search_txt" width="0" height="0" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0"></iframe>
					</fieldset>
				</div>
				<!-- /Integrated search(통합검색) -->
				<!-- Quick Phototicket -->
				<div class="sect-phototicket">
					<h2>CGV 포토티켓</h2>
					<a href="#" onclick="setClickLog('/GNB/포토티켓');" target="_blank">CGV 포토티켓</a>
				</div>
				<!-- /Quick Phototicket -->
				<!-- Advertisement -->
                
				<div class="ad-partner">
                    <a href="s"  onclick="setClickLog('/GNB/제휴배너(검색)');">
                        <img src="http://img.cgv.co.kr/Event/Event/JehuBanner/2015/0311/web_BC_133.png" alt="비씨카드" />
                    </a>
					 <!-- 외부광고영역 -->
				</div>
                
				<!-- /Advertisement -->
			</div>
		</div>
        <!-- Personalization -->
		
		<!-- /Personalization -->        
        <!-- txt banner -->
        <div id="ctl00_sect_txt_banner" class="sect_txt_banner">
            <div>
                <iframe src="http://img.cgv.co.kr/r2014/banner/main_txt_banner.html" title="" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" ></iframe>
            </div>
        </div>
        <!-- /text banner -->