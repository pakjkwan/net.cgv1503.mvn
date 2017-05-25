<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
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
    <meta id="ctl00_og_title" property="og:title" content="회원가입 &lt; 회원서비스 | 영화 그 이상의 감동. CGV"></meta>
	<meta id="ctl00_og_description" property="og:description" content=""></meta> 
    <meta id="ctl00_og_image" property="og:image" content="http://img.cgv.co.kr/common/cgv_200x200.jpg"></meta>

    <link rel="shortcut icon" href="http://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
    <title id="ctl00_headerTitle">회원가입 &lt; 회원서비스 | 영화 그 이상의 감동. CGV</title>
    <link rel="shortcut icon" type="image/x-icon" href="http://img.cgv.co.kr/R2014/images/favicon.ico" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/reset.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/module.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/common.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/content.css" />
    <link rel="stylesheet" media="print" type="text/css" href="http://img.cgv.co.kr/R2014/css/print.css" />
    <link rel="stylesheet" type="text/css" href="http://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/popup/jquery.superbox.css" />
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
		b,input, textarea { font-size:15pt; font-weight:bold; font-family:'맑은고딕' ; }
		td { font-size:10pt; font-weight:bold; font-family:'맑은고딕'; height: 20; border-bottom-style: solid; border-bottom-width: 1;  }
		a { font-size:10pt; font-weight:bold; font-family:'맑은고딕'  }
		a:link { text-decoration:none; color:#333333; }
		a:visited { text-decoration:none; color:#333333; }
		a:active { text-decoration:none; color:#333333; }
		a:hover { text-decoration:underline; color:#333333; }
		tr, td { text-align:center }
	</style>

    <!--/각페이지 Header End--> 
   	<jsp:include page="../sign/script.jsp" />
    
</head>
<body class="">

<div class="skipnaiv">
	<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
</div>
<div id="cgvwrap">
    <div class="cgv-ad-wrap" id="cgv_main_ad">
        <div id="TopBarWrapper" class="sect-head-ad">
            <div class="top_extend_ad_wrap">
                <div class="adreduce" id="adReduce">                    
                    <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@TopBar_EX" width="100%" height="80" title="" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" name="TopBanner" id="TopBanner"></iframe>
                </div> 
                <div class="adextend" id="adExtend"></div>
            </div><!-- //.top_extend_ad_wrap -->
        </div>    
    </div>    
	<!-- Header -->
	<div id="header">
		<jsp:include page="../main/header.jsp" />
	</div>
	<!-- /Header -->
	<!-- Contaniner -->
	<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->

        <!-- LineMap -->

        <div id="ctl00_navigation_line" class="linemap-wrap">
            <jsp:include page="../sign/linemap.jsp" />
		<!-- Contents Area -->
		<div id="contents" class="">
            
            <!-- Contents Start -->
			

<!-- 실컨텐츠 시작 -->
<div class="wrap-join">
    <div class="sect-join">
        <div class="h-join">
            <h3 class="hidden">영화 그 이상의 감동! CGV에 오신걸 환영합니다. </h3>
            <p>국내 최초로 멀티플렉스 개념을 도입하여 영화관람의 새로운 트렌드를 이끌어 온 CGV는 <br />
			고객을 향한 온리 원 서비스와 최고의 운영노하우로 글로벌 문화, 엔터테인먼트 플랫폼으로 도약하고 있습니다. </p>
        </div>
        <div class="box-joininfo">
            <div class="box-inner">
                <h4>CGV + CJ ONE 통합회원가입안내 <a href="http://www.cjone.com/cjmportal/hpmf01Q2Form.do?coopco_cd=7010&brnd_cd=1000" target="_blank" title="새창" class="round gray"><span>혜택상세보기</span></a></h4>
                <p>CGV는 CJ ONE의 제휴 브랜드이며, CJ ONE 통합 회원으로 가입하시면 CGV와 CJ ONE의 서비스를 모두 이용하실 수 있습니다.  <br />
                CJ ONE 통합 회원은 CJ ONE 제휴 브랜드 상품/서비스 구매 시 0.1% ~ 5% CJ ONE 포인트 적립혜택을 누리실 수 있습니다. <br />
                적립된 CJ ONE 포인트는 모든 CJ ONE 제휴 브랜드 매장에서 현금처럼 사용 가능합니다. </p>
            </div>
        </div>
        <!-- <a href="sign_form.do" id="popup" target="_blank" title="새창" class="link-join">회원 가입</a> -->
        <div id='popup' class="link-join">회원가입</div>
        <div id='modal' style='display:none'>
        <form id="signUpForm" action="member_insert.do?idx=${email}" method="post">
        				<table style="font-size: 12pt">
        				<tr>
        					<td colspan="2" style="text-align: center;font-weight: bold;">
        					Email이 아이디로 사용됩니다.</br> 
        					<font color='red'>따라서 비밀번호는 Email 계정 비밀번호와 같게 하지 마세요.</font>
        					</td>
        				</tr>
        				<tr>	
        					<td>Email</td>
        					<td><input type="text" name="email" style="width: 99%;" /></td>
        				
        				</tr>
        				<tr>
        					<td style="width: 200px;">이름(Full Name)</td>
        					<td style="width: 390px"><input type="text" name="name" style="width: 99%;" /></td>
        				</tr>
        				<tr>
        					<td>비밀번호(Password)</td>
        					<td><input type="password" name="passwd" style="width: 99%;" /></td>
        				</tr>       				
        				<tr>
        					<td>비밀번호 확인(Confirm)</td>
        					<td><input type="password" name="confirm" style="width: 99%;" /></td>
        				</tr>
        				<tr>
        					<td>핸드폰(Mobile)</td>
        					<td><input type="text" name="mobile" style="width: 99%;" /></td>
        				</tr>
        				</table>
        				<div style="text-align: center;padding-bottom: 15px;">
        					<input type="submit" style='width:150px;height:50px;margin-top: 20px;' value="확 인" class="round gray" onclick="return loginCheck()" />
        				</div>
        				</form>
        				</div>
    </div>
    <div class="sect-alliance">
        <h4>주요 제휴 브랜드 안내 <em>(2013년 6월 기준)</em></h4>
        <p>CGV, 뚜레쥬르, 빕스, CJ오쇼핑, CJmall, tving, 헬로모바일, Mnet, 올리브영, CJ온마트,투썸플레이스, 비비고, 콜드스톤크리머리, 차이나팩토리, 씨푸드오션, <br />
        피셔스마켓, 더플레이스, 로코커리, 제일제면소,빕스 버거, MPub,<br />
        CJ푸드월드, 더 스테이크 하우스 바이 빕스,  CJ THE KITCHEN, CJ E&amp;M,<br />
         차이나팩토리 딜라이트, 마이 캐치온, CJ월디스, <br />
        CJ에듀케이션즈 나는생각,  CJ E&amp;M 공연 예매 서비스, 계절밥상 <br />
        </p>
        <dl class="box-operationguide">
            <dt>이용안내</dt>
            <dd>아이핀 인증 회원 가입 안내</dd>
            <dd>- CJ ONE 회원 가입 시 아이핀 회원가입을 선택할 수 있습니다.</dd>
            <dd>-  아이핀 인증 회원 가입의 경우, The CJ카드 관련서비스(적립금 지급, 할인쿠폰 다운로드)가 불가합니다.   </dd>
            <dd><a href="/user/login/ipin-guide.aspx" class="round black"><span>아이핀회원 안내</span></a></dd>
        </dl>
    </div>
</div>
<!-- 실컨텐츠 끝 --> 


            <!--/ Contents End -->

		</div>
		<!-- /Contents Area -->
	</div>
	<!-- /Contaniner -->
	<!-- Footer -->
	<div id="footer">
		<jsp:include page="../main/footer.jsp" />
	</div>
	<!-- /Footer -->

    <!-- Aside Banner :  -->
	<div id="ctl00_sect_person_right" class="sect-aside-banner" style="padding:0; margin:0; position:fixed; z-index:1;">
		<div class="aside-content-top">
			<div class="aside-content-btm">
				<a href="/theaters/" onclick="setClickLog('/서브/퀵링크/CGV극장');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_theater.gif" alt="CGV THEATER" /></a>
				<a href="/arthouse/" onclick="setClickLog('/서브/퀵링크/CGV이벤트');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_arthouse.gif" alt="CGV arthouse" /></a>
				<a href="/theaters/special/" onclick="setClickLog('/서브/퀵링크/CGV특별관');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_special.gif" alt="CGV SPECIAL" /></a>
				<a href="http://phototicket.cgv.co.kr/" target="_blank"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_phototicket.gif" alt="CGV 포토티켓" /></a>
				<a href="/user/mycgv/reserve/" class="required-login" data-url="/user/mycgv/reserve/" onclick="setClickLog('/서브/퀵링크/CGV예매내역');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_ticket.gif" alt="CGV TICKET INFO" /></a>
				<a href="http://section.cgv.co.kr/discount/Special/discount/Default.aspx" onclick="setClickLog('/서브/퀵링크/CGV할인정보');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_discount.gif" alt="CGV DISCOUNT INFO" /></a>
			</div>
		</div>
		<div class="btn-top">
			<a href="#" onclick="scrollTo(0,0);return false;" onclick="setClickLog('/서브/퀵링크/TOP버튼);"><span>최상단으로 이동</span></a>
		</div>
	</div>
	<!-- //Aside Banner -->
    
</div>


<script type="text/template" id="temp_popup_movie_player">
<div class="popwrap">
    <div class="sect-layerplayer">
        <div class="cols-pop-player">
            <h1 class="title" id="movie_player_popup_title"></h1>
            <div class="col-pop-player">
                <div class="warp-pop-player" style="position: relative;">
                    <iframe id="ifrm_movie_player_popup" name="ifrm_movie_player_popup" src="about:blank" style="width:800px;height:450px;" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
					
					<div class="sect-replay" style="display:none" id="pop_player_relation_wrap">
						<button class="btn-replay movie_player_inner_popup" type="button" data-gallery-idx="0" id="btn_movie_replay">다시보기</button>
						<!-- 없어지는 영역 -->
						<div class="wrap-relationmovie" id="pop_player_relation_item_wrap">
							<strong class="title">관련영상</strong>
							<ul id="pop_player_relation_movie">
                                <li></li>
                            </ul>
						</div><!-- .wrap-relationmovie -->
					</div><!-- .sect-replay -->
					
                </div><!-- .warp-pop-player -->
                <div class="descri-trailer">
                    <strong class="title">영상설명</strong>
                    <textarea readonly="readonly" id="movie_player_popup_caption"></textarea>
                </div>
            </div><!-- .col-player -->
            <div class="col-pop-playerinfo">
                <div id="movie_player_popup_movie_info"></div>
                <div class="sect-trailer">
                    <strong class="title">신규영상</strong>
                    <ul>
                        
                        <li>
                            <div class="box-image" style="margin-bottom:0px;">
                                <a href="#" title="[이미테이션 게임]올 어바웃 앨런 튜링 영상 영상보기" class="movie_player_inner_popup" data-gallery-idx="125762">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/78092/78092125762_148.jpg" 
                                        alt="이미테이션 게임_트레일러" />
                                        <span class="ico-play">영상보기</span>
                                    </span>
                                </a>
                            </div>
                            <div class="box-contents">
                                <a href="#" title="[이미테이션 게임]올 어바웃 앨런 튜링 영상 영상보기" class="movie_player_inner_popup" data-gallery-idx="125762">
                                    <strong class="title">
                                                                        
                                        [이미테이션 게임]
                                        올 어바웃 앨런 튜링 영상
                                    </strong>
                                </a>
                            </div>
                        </li>
                        
                        <li>
                            <div class="box-image" style="margin-bottom:0px;">
                                <a href="#" title="[도라에몽:스탠바이미]전국민 도라에몽 열풍 영상 영상보기" class="movie_player_inner_popup" data-gallery-idx="125793">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/78029/78029125793_148.jpg" 
                                        alt="도라에몽:스탠바이미_트레일러" />
                                        <span class="ico-play">영상보기</span>
                                    </span>
                                </a>
                            </div>
                            <div class="box-contents">
                                <a href="#" title="[도라에몽:스탠바이미]전국민 도라에몽 열풍 영상 영상보기" class="movie_player_inner_popup" data-gallery-idx="125793">
                                    <strong class="title">
                                                                        
                                        [도라에몽:스탠바이미]
                                        전국민 도라에몽 열풍 영상
                                    </strong>
                                </a>
                            </div>
                        </li>
                        
                        <li>
                            <div class="box-image" style="margin-bottom:0px;">
                                <a href="#" title="[순수의 시대]장혁/강하늘 캐릭터 영상 영상보기" class="movie_player_inner_popup" data-gallery-idx="125788">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/78105/78105125788_148.jpg" 
                                        alt="순수의 시대_트레일러" />
                                        <span class="ico-play">영상보기</span>
                                    </span>
                                </a>
                            </div>
                            <div class="box-contents">
                                <a href="#" title="[순수의 시대]장혁/강하늘 캐릭터 영상 영상보기" class="movie_player_inner_popup" data-gallery-idx="125788">
                                    <strong class="title">
                                                                        
                                        [순수의 시대]
                                        장혁/강하늘 캐릭터 영상
                                    </strong>
                                </a>
                            </div>
                        </li>
                        
                    </ul>
                </div>
            </div><!-- .col-playerinfo -->
        </div><!-- .cols-player -->
        <button type="button" class="btn-close">닫기</button>
    </div>
</div>
</script>

<script id="temp_popup_movie_player_movie_info" type="text/x-jquery-tmpl">
<div class="box-image">
    <a href="/movies/detail-view/?midx=${MovieIdx}" title="${Title} 상세보기 새창">
        <span class="thumb-image">
            <img src="${PosterImage.MiddleImage}" alt="${Title} 포스터" />
            <span class="ico-grade ${MovieGrade.StyleClassName}">${MovieGrade.GradeText}</span>
        </span>
    </a>   
</div>
<div class="box-contents">
    <a href="/movies/detail-view/?midx=${MovieIdx}" title="${Title} 상세보기 새창">
        <strong class="title">${Title}</strong>
    </a>
    <span class="txt-info" style="margin-bottom:2px;">
        <em class="genre">${GenreText}</em>
        <span>
            <i>${OpenDate}</i>
            <strong>${OpenText}</strong>
            {{if D_Day > 0}}
                <em class="dday">D-${D_Day}</em>
            {{/if}}
        </span>
    </span>
{{if IsTicketing }}
    <a class="link-reservation" href="/ticket/?MOVIE_CD=${CGVCode}&MOVIE_CD_GROUP=${CGVCode}">예매</a> 
{{/if}}
</div>
</script>

<script id="temp_popup_movie_player_relation_movie_item" type="text/x-jquery-tmpl">
<li>
    <div class="box-image">
        <a href="#" title="${Title} 영상보기" class="movie_player_inner_popup" data-gallery-idx="${GalleryIdx}">
            <span class="thumb-image">
                <img src="${ImageUrl}" 
                alt="${Title}_트레일러" />
                <span class="ico-play">영상보기</span>
            </span>
        </a>
    </div>
</li>
</script>

<script type="text/javascript">
    //<![CDATA[
    function closeBanner(){        
        $('#cgv_main_ad').remove();     
        for(var i = 0; i < 2; i++) {
            window.setTimeout(function(){
                $(window).resize()                
            }, 30)
        }
    }
    function showPlayEndEvent() {
        $('#pop_player_relation_wrap').show();
        $('#btn_movie_replay').focus();
    }

    (function ($) {
        $(function () {
        	$('#popup').on('click',function(e){
        		 e.preventDefault();
        		 
        		$('#modal').dialog({
        			modal:true,	
        			width:600,
        			height:350,
        			title:'회원가입을 환영합니다'
        		});
        	});  
            /* side menu move script */
            var isBricks = false;
            $('.sect-aside-banner').asideMenu({'isBricks': isBricks });            
            $('.movie_player_popup').moviePlayer();     //동영상플레이어                       
            //특별관 클럽
            $('#header a.specialclub').on('click', function() { 
                openSpecialClub();
                return false;
            });

            //특별관 클럽
            $('.sect-special a.specialclub').on('click', function() {
                openSpecialClub();
                return false;
            });
            

            //동성로타운
            $('.special1_pop').on('click', function () {
                openDownTown();
                return false;
            });             
            // 검색 auto validate version.
            $('.btn-go-search').on('click', function () {
                var $frmSearch = $(this).parent().parent('form');
                $frmSearch.submit();
                return false;
            });

            //검색 입력창 클릭 시 광고값 reset
            $('#header_keyword').on('click', function() {
                $(this).attr('placeholder', '');
                $('#header_ad_keyword').val('');
            });

            //통합검색 상단 검색 버튼
            $('#btn_header_search').on('click', function() {
                if($('#header_ad_keyword').val() != "")
                    goSearch($('#header_ad_keyword'));      //광고
                else
                    goSearch($('#header_keyword'));

                return false;
            });


            //통합검색 검색어 입력창
            $('#header_keyword').keyup(function(e) {
                if (e.keyCode == 13) goSearch($('#header_keyword'));        
            });

            //통합검색
            function goSearch($objKeyword) {
                
                if($objKeyword.val() == "") {
                    alert("검색어를 입력해 주세요");
                    $objKeyword.focus();
                    return false;
                }

                location = "/search/?query=" + escape($objKeyword.val());
            }
			
            //메인스킵네비
            $('#skipHeader').on('click', function(){
                var $ctn = $('#contents');
                $ctn.attr({
                    tabIndex : -1
                }).focus();				
                return false;
            });

            //현재 URL 해당파라미터 교체
            function updateQueryStringParameter(uri, key, value) {
                var re = new RegExp("([?|&])" + key + "=.*?(&|#|$)", "i");
                if (uri.match(re)) {
                    return uri.replace(re, '$1' + key + "=" + value + '$2');
                } else {
                    var hash =  '';
                    var separator = uri.indexOf('?') !== -1 ? "&" : "?";    
                    if( uri.indexOf('#') !== -1 ){
                        hash = uri.replace(/.*#/, '#');
                        uri = uri.replace(/#.*/, '');
                    }
                    return uri + separator + key + "=" + value + hash;
                }
            }
            //모바일버전 가기
            $('.go-mobile').on('click', function() {
                location.replace(updateQueryStringParameter(location.href, "IsMobile", "N"));
                return false;
            });

        });
    })(jQuery);
	
    function goFamilySite() {
        var famulySiteURL = $(familysite).val();
        if (famulySiteURL != "") {
            var win = window.open(famulySiteURL, 'winFamilySite')
            win.focus();
        }
    }
    
    //]]>
</script>



<script language="javascript" type="text/javascript">
    //201402 SYH GA추가
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-47126437-1', 'cgv.co.kr');
    ga('send', 'pageview');
</script>

<!-- 비즈스프링 통계태그 -->
<script type="text/javascript" language="javascript" src="http://img.cgv.co.kr/common/js/insightIS.js"></script>

</body>
</html>