<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath }"/>
<link href="${context }/resources/css/style.css" rel='stylesheet' type='text/css' />
    
           
<div class="head">	
			<h1><a href="main.do" onclick="setClickLog('/����/GNB/�ΰ�');"><img src="http://img.cgv.co.kr/R2014/images/title/h1_cgv.png" alt="CGV" /></a></h1>
			<div class="sect-service">
				<h2>���� �޴�</h2>
				<!-- <ul class="util">
					<li><a href="http://section.cgv.co.kr/event/appRenewal/default.aspx" class="app" target="_blank" title="CGV�� 4.0 ��ġ ��â"  onclick="setClickLog('/GNB/CGV��4.0��ġ');"><span>CGV�� 4.0 ��ġ</a></li>
					<li><a href="https://www.facebook.com/CJCGV" class="like" target="_blank" title="Facebook ���ƿ�! ��â" onclick="setClickLog('/GNB/Facebook���ƿ�!');"><span>Facebook ���ƿ�!</span></a></li>
					<li><a href="/discount/" class="frugal" onclick="setClickLog('/GNB/�˶��ѿ�ȭ������!');"><span>�˶��� ��ȭ������!</span></a></li> ����ī��
				</ul> -->
			
				<ul style='list-style-type:none'>
                	<!--  �α��� ���н� -->
                    <li style='display:inline'><a href="login_page.do" ><span>�α��� | </span></a></li>
                    <li style='display:inline'><a href="sign_page.do" ><span>ȸ������ | </span></a></li>
                    <li style='display:inline'><a href="board_form.do">�Խ��� | </a></li>
					<li style='display:inline'><a href="${context }/guest.do">���� | </a></li>
					<li style='display:inline'><a href="${context }/about.do">ȸ��Ұ� | </a></li>
				</ul>	
			
			</div>
                 
            <div class="im-wrap"> <!-- Important wrap -->
				<h2><img src="http://img.cgv.co.kr/R2014/images/title/h2_cultureplex.png" alt="CULTUREPLEX" /></h2>
				<!-- Local Navigation Bar -->
				<div class="lnb">
					<h2>CGV �ָ޴�</h2>
					<ul id="gnb_list">
						<li class="movie"><a href="itemList.do">��ȭ</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="#" onclick="setClickLog('/GNB/��ȭ/������Ʈ');">������Ʈ</a></li>
										<li><a href="#" onclick="setClickLog('/GNB/��ȭ/HDƮ���Ϸ�');">HD Ʈ���Ϸ�</a></li>
										<li><a href="#" onclick="setClickLog('/GNB/��ȭ/�������δ�');">�������δ�</a></li>
										<li><a href="#" onclick="setClickLog('/GNB/��ȭ/����');">����</a></li>
										<li class="last"><a href="/arthouse/" onclick="setClickLog('/GNB/��ȭ/��Ʈ�Ͽ콺');">CGV��Ʈ�Ͽ콺</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="booking"><a href="javascript:alert('�غ����Դϴ� ^^;');">����</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/ticket/" onclick="setClickLog('/GNB/����/��������');">��������</a></li>
										<li><a href="/reserve/show-times/" onclick="setClickLog('/GNB/����/�󿵽ð�ǥ');">�󿵽ð�ǥ</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="theaters"><a href="javascript:alert('�غ����Դϴ� ^^;');">����</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/theaters/" onclick="setClickLog('/GNB/����/CGV����');">CGV ����</a></li>
										<li><a href="/theaters/special/" onclick="setClickLog('/GNB/����/Ư����');">Ư����</a></li>
										<li class="last"><a href="#" title="��â" class="specialclub" onclick="setClickLog('/GNB/����/Ư����Club');">Ư���� Club</a></li>
									</ul>
								</div>
							</div>
						</li>
                        <li class="culture"><a href="javascript:alert('�غ����Դϴ� ^^;');">�̺�Ʈ&amp;����</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/culture-event/event/" onclick="setClickLog('/GNB/�̺�Ʈ');">�̺�Ʈ</a></li>
										<li><a href="/culture-event/culture-shop/" onclick="setClickLog('/GNB/���� �����');">���� �����</a></li>
										<li><a href="/magazine/" onclick="setClickLog('/GNB/�Ű���');">�Ű���</a></li>
										<li><a href="/culture-event/cultureplex/" onclick="setClickLog('/GNB/��ó�÷���');">��ó�÷���</a></li>
										
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- /Local Navigation Bar -->
                <!-- Integrated search(���հ˻�) -->
                <div class="sect-srh">
					<h2>���հ˻�����</h2>
					<fieldset>
						<legend>���հ˻�</legend>
						<input type="text" title="���հ˻�" id="header_keyword" name="header_keyword" minlength="2" maxlength="20" />
                        <input type="hidden" id="header_ad_keyword" name="header_ad_keyword" />
						<button type="button" class="btn-go-search" id="btn_header_search" onblur="setClickLog('/GNB/�˻�������');">�˻�</button>
                        <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Search_txt" width="0" height="0" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0"></iframe>
					</fieldset>
				</div>
				<!-- /Integrated search(���հ˻�) -->
				<!-- Quick Phototicket -->
				<div class="sect-phototicket">
					<h2>CGV ����Ƽ��</h2>
					<a href="#" onclick="setClickLog('/GNB/����Ƽ��');" target="_blank">CGV ����Ƽ��</a>
				</div>
				<!-- /Quick Phototicket -->
				<!-- Advertisement -->
                
				<div class="ad-partner">
                    <a href="s"  onclick="setClickLog('/GNB/���޹��(�˻�)');">
                        <img src="http://img.cgv.co.kr/Event/Event/JehuBanner/2015/0311/web_BC_133.png" alt="��ī��" />
                    </a>
					 <!-- �ܺα����� -->
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