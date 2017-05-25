<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <script type="text/javascript">
        //<![CDATA[

        _TRK_CP = "/홈";

        app.config('staticDomain', 'http://img.cgv.co.kr/R2014/')
            .config('imageDomain', 'http://img.cgv.co.kr')
            .config('isLogin', 'False');

        // AD FLOAT
        // 암호화 할 문자열과 키값(상수값)을 매개변수로 받는다.
        function EncryptAD(str, key) {
            output = new String;
            Temp = new Array();
            TextSize = str.length;
            for (i = 0; i < TextSize; i++) {
                // key 값을 원하는 대로 연산을 한다
                output += String.fromCharCode(str.charCodeAt(i) + parseInt(key) + 123 + i);
            }
            return output;
        }
        // 복호화
        // 암호화 된 문자열과 키값(상수값)을 매개변수로 받는다.
        function DecryptAD(str, key) {
            output = new String;
            Temp = new Array();
            TextSize = str.length;
            for (i = 0; i < TextSize; i++) {
                // 암호화시 사용한 연산과 같아야 한다.
                output += String.fromCharCode(str.charCodeAt(i) - (parseInt(key) + 123 + i));
            }

            return output;
        }

        function getCookieVal(offset) {
            var endstr = document.cookie.indexOf(";", offset);
            if (endstr == -1) endstr = document.cookie.length;
            return unescape(document.cookie.substring(offset, endstr));
        }
        function GetCookieAd(name) {
            var arg = name + "=";
            var alen = arg.length;
            var clen = document.cookie.length;
            var i = 0;
            while (i < clen) { //while open
                var j = i + alen;
                if (document.cookie.substring(i, j) == arg)
                    return getCookieVal(j);
                i = document.cookie.indexOf(" ", i) + 1;
                if (i == 0) break;
            } //while close
            return null;
        }
        function setCookieAD(name, value, expiredays) {
            var todayDate = new Date();
            todayDate.setTime(todayDate.getTime() + (expiredays * 24 * 60 * 60 * 1000));
            document.cookie = name + "=" + escape(value) + "; expires=" + todayDate.toGMTString() + "; path=/; domain=cgv.co.kr";
        }
        function CloseAD() {
            var AdUrl = window.location.href;
            var ArrAdUrl = AdUrl.split("/");

            var CurCookieName = 'CgvPopAd-' + ArrAdUrl[3];
            var CurCookieUrl = GetCookieAd(CurCookieName);
            var CookieUrl = ArrAdUrl[3];

            CookieUrl = EncryptAD(CookieUrl, "15442280");
            setCookieAD(CurCookieName, CookieUrl, '1');
            $(document).find('#ad_float1').hide();
        }
        function OpenAD() {
            var AdUrl = window.location.href;
            var ArrAdUrl = AdUrl.split("/");
            var CookieUrl = ArrAdUrl[3];
            var CurCookieName = 'CgvPopAd-' + ArrAdUrl[3];
            var CurCookieUrl = GetCookieAd(CurCookieName);

            if (CurCookieUrl == null) {
                CurCookieUrl = "";
            }
            else {
                CurCookieUrl = DecryptAD(CurCookieUrl, "15442280");
            }

            if (CurCookieUrl.indexOf(CookieUrl) != -1) {
                $(document).find('#ad_float1').hide();
            }

            //section.cgv.co.kr 매거진 체크
            var magazineckurl = GetCookieAd("CgvPopAd-magazine");
            if (magazineckurl != null) {
                var magazineck = DecryptAD(magazineckurl, "15442280");
                if (magazineck != null && magazineck == "magazine") {
                    //값이있는경우 표시하지않음
                    $(document).find('#ad_float1').hide();
                }
            }
        }



        //상단 키워드 광고 (S)
        function AdSearchExt(txt, SearchText) {
            $('#header_keyword').attr('placeholder', txt);
            $('#header_ad_keyword').val(SearchText);
        }

        function hdIcoSet(left, sh) { }
        //상단 키워드 광고 (E)


        //특별관 클럽 팝업
        function openSpecialClub() {
            //            var win = window.open('http://section.cgv.co.kr/event/SpecialClub/2014clubInfo_pop.aspx', 'winSpecialClub', 'left=0,top=0,width=670,height=800,toolbar=no,scrollbars=yes');
            var win = window.open('http://www.cgv.co.kr/event/develop/1503_CLUB_Info.aspx', 'winSpecialClub', 'left=0,top=0,width=580,height=700,toolbar=no,scrollbars=yes');
            win.focus();
        }

        //동성로타운
        function openDownTown() {
            var win = window.open('http://section.cgv.co.kr/event/dongsungroTown/serviceInfo.aspx', 'winDownTown', 'left=0,top=0,width=670,height=800,toolbar=no,scrollbars=yes');
            win.focus();
        }


        //상단광고닫기
        function hideCgvTopAd() {
            $(".cgv-ad-wrap").hide();
            $('#wrap_main_notice').parent('div').css('top', 280);
        }

        //비즈스프링 클릭로그
        function setClickLog(title) {
            eval("try{trk_clickTrace('EVT', '" + title + "')}catch(_e){}");
        }

        //]]>
    </script>
    <script type="text/javascript" src="https://nsso.cjone.com/findCookieSecured.jsp?cjssoq=KjcCdheXWTLbfjsII3RTNWo%2f2s14j5wJ%2fs7upgk2zn6UvZs6nIIBlTX%2fi%2bldffZ8rZ0hMFKSJZiqY%2bFsDipHizVuRE1ySTArY3RqTEJvakxXV3lQSUlaa0FEa3hsU2FwRDczN0VadWNHRWtJTkU2YzlxNXpib3hFdjdtZ0NlQnk%3d"></script>
</head>
<body class="">

    <form name="ssologinfrm" action="https://www.cgv.co.kr/user/login/login-sso.aspx" method="post">
        <input type="hidden" id="cjssoq" name="cjssoq" />
        <input type="hidden" name="returnURL" value="/default.aspx" />
    </form>
    <script type="text/javascript">
        function cjsso() {
            if ((typeof _cjssoEncData) != "undefined" && _cjssoEncData != "") {
                document.getElementById("cjssoq").value = _cjssoEncData;
                document.ssologinfrm.submit();
            }
        }

        cjsso();
    </script>
    
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

            /* side menu move script */
            var isBricks = true;
            $('.sect-aside-banner').asideMenu({ isMain:true,'isBricks': isBricks });            
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

<!-- 제이쿼리 -->

<script id="temp_event" type="text/x-jquery-tmpl">
<li><a href="${ThumnailLinkUrl}"  {{if (Blank) }}target="_blank"{{/if}}><img src="${ThumnailImage}" alt="${EventTitle}" /></a></li>
</script>

<script id="temp_popup" type="text/x-jquery-tmpl">
<div class="layer-contents" id="wrap_main_notice" style="top:360px;">
<!-- 메인팝업 -->
    <div class="wrap-noti-main" id="mainNotice">
        <div class="noti-main">
			<strong class="hidden">공지사항</strong>
            <div class="slider" id="mainNoticeSlider">
                <button type="button" class="btn-play">자동 넘기기 시작</button>
                {{each List}}
			        {{html Contents}}
                {{/each}}
                <button type="button" class="btn-prev">이전 페이지 이동</button>
				<!-- strong 에 현재 보이는 index, span 에 총 length -->
                <div class="noti-num">
                    <strong>1</strong><span>/${List.length}</span>
                </div>
                <button type="button" class="btn-next">다음 페이지 이동</button>
            </div>
        </div>
        <div class="noti-footer">
            <span class="check"><input id="open_today" type="checkbox" /><label for="open_today">하루동안 이 창 보이지 않기</label></span>
            <button class="btn-close" type="button"><span class="hidden">공지사항</span>닫기</button>
        </div>
    </div><!-- .wrap-noti-main -->
<!-- 메인팝업끝 -->
</div>
</script>

<script type="text/javascript">
  
    (function ($) {
        $(function () {
            var eventData = [{"EventGroup":"03","EventTitle":"KT고객이라면 CGV에서 Olleh~!!","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0312/240_200.jpg","ThumnailLinkUrl":"KT고객이라면 CGV에서 Olleh~!!","Blank":false},{"EventGroup":"07","EventTitle":"파리폴리스 예매이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0309/parisfollies_240x200.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12699&menu=0","Blank":false},{"EventGroup":"04","EventTitle":"2015년 VIP쿠폰북 오픈","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0305/2015cgvvip(web)_240_200(1).jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12708&menu=0","Blank":false},{"EventGroup":"04","EventTitle":"2015 VIP 스페셜데이 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0305/DAY_banner_240_200.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12700&menu=0","Blank":false},{"EventGroup":"04","EventTitle":"CJ ONE VIP 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0305/CJ50_banner_240_200(2).jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12706&menu=0","Blank":false},{"EventGroup":"07","EventTitle":"포스마쥬어 예매 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0303/force_240x200_cgv.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12683&menu=8","Blank":false},{"EventGroup":"07","EventTitle":"그라운드 이방인 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0303/ground_240x200_cgv(1).jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12678&menu=0","Blank":false},{"EventGroup":"03","EventTitle":"LG U+이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0108/web_LG_list-banner_mo.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12534&menu=0","Blank":false},{"EventGroup":"03","EventTitle":"KDB다이렉트 보험 CGV영화 2000원 할인","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0106/240_200.gif","ThumnailLinkUrl":"http://section.cgv.co.kr/discount/Special/discount/EventDetail.aspx?Idx=12527&pb=Y","Blank":false},{"EventGroup":"05","EventTitle":"CGV 여의도 4DX 오픈 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1216/cgv-4dxopen banner.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/event/running/view.aspx?Idx=10975&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"05","EventTitle":"[CGV 부천]RENEWAL OPENING","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1212/membership.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/event/running/view.aspx?Idx=10999&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"08","EventTitle":"화이트데이 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0312/banner_240x200.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/magazine/detail-view.aspx?idx=75&midx=&gidx=&tidx=","Blank":false},{"EventGroup":"02","EventTitle":"위플래쉬 야마하 예매이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0307/weplahs_240x200(1).jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12714&menu=0","Blank":false},{"EventGroup":"03","EventTitle":"컬쳐캐쉬","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2014/0630/CUL.jpg","ThumnailLinkUrl":"http://cgv.co.kr/event/running/view.aspx?Idx=11022&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"06","EventTitle":"씨네키즈 특별관 페이지","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1113/cinekids_banner.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/theater/special/Default.aspx?theaterCode=&onlyOne=CK","Blank":false},{"EventGroup":"08","EventTitle":"영화+콤보의 핫딜 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0313/moviecombo_banner_240x200.jpg","ThumnailLinkUrl":"http://section.cgv.co.kr/event/running/EventZone.aspx?idx=193","Blank":false},{"EventGroup":"02","EventTitle":"드래곤블레이드 1+1 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0309/blade_240X200.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12716&menu=0","Blank":false},{"EventGroup":"02","EventTitle":"살인의뢰 예매이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0303/killing_240x200(1).jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12685&menu=0","Blank":false},{"EventGroup":"07","EventTitle":"제네시스 예매이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0227/genesis_240x200.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12674&menu=0","Blank":false},{"EventGroup":"01","EventTitle":"CGV 러브조작단 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1209/special.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/event/Love/default.aspx","Blank":false},{"EventGroup":"05","EventTitle":"private dining CINE de CHEF","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1202/cinedechef private dining.jpg","ThumnailLinkUrl":" http://www.cgv.co.kr/event/running/view.aspx?Idx=10866&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"06","EventTitle":"4DX","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/0731/4dx.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/theater/special/Default.aspx?theaterCode=&onlyOne=4D14","Blank":false},{"EventGroup":"08","EventTitle":"쉐이크팝콘 할인 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0219/shakepop_web_banner_240200(1).jpg","ThumnailLinkUrl":"http://section.cgv.co.kr/event/running/EventZone.aspx?idx=185","Blank":false},{"EventGroup":"04","EventTitle":"2015년 동성로 타운 멤버쉽","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0121/cgvtown_dongsungro_2015_banner_240_200.jpg","ThumnailLinkUrl":"http://section.cgv.co.kr/event/dongsungroTown/cgv_dongsungrotown.aspx","Blank":false},{"EventGroup":"01","EventTitle":"CJ ONE 페이스북 좋아요이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1203/cjone_490_163.jpg","ThumnailLinkUrl":"http://goo.gl/Boe6bn ","Blank":true},{"EventGroup":"05","EventTitle":"[인천] 청소년 5천원 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1128/sale.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/event/running/view.aspx?Idx=10825&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"06","EventTitle":"imax","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/0731/imax.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/theater/special/Default.aspx?theaterCode=&onlyOne=07","Blank":false},{"EventGroup":"08","EventTitle":"스물 VIP 시사회","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0313/20_240x200.jpg","ThumnailLinkUrl":"http://section.cgv.co.kr/event/running/EventZone.aspx?idx=194","Blank":false},{"EventGroup":"02","EventTitle":"추억의 마니 예매이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0309/marnie_240x200.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12718&menu=0","Blank":false},{"EventGroup":"01","EventTitle":"영화 플랜맨 시사회 초청 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1206/special_banner.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/event/running/view.aspx?Idx=10950&flag=image&sTap=&pb=Y&gubun=&etype=ing","Blank":false},{"EventGroup":"08","EventTitle":"포토티켓 커뮤니티 ","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0128/pho_web_240.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12581&menu=0","Blank":false},{"EventGroup":"01","EventTitle":"psy 크리스마스 콘서트 ","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1216/mainbanner.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/Event/x-mas/movie.aspx","Blank":false},{"EventGroup":"08","EventTitle":"CJ그룹채용 시사회","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0307/cj_recruit(web)_list240.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=12710&menu=0","Blank":false},{"EventGroup":"01","EventTitle":"2탄 럭키 페스티벌","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1218/1218_specialevent_banner.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/event/cultureplex/Lucky_A.aspx","Blank":false},{"EventGroup":"08","EventTitle":"스쿨오브락 이벤트","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0227/college_240x200.jpg","ThumnailLinkUrl":"http://section.cgv.co.kr/event/running/EventZone.aspx?idx=191","Blank":false},{"EventGroup":"08","EventTitle":"소셜포비아 스페셜 배너 홍보","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2015/0224/socialphobia(web)_list_240.jpg","ThumnailLinkUrl":"http://section.cgv.co.kr/event/running/EventZone.aspx?idx=187","Blank":false},{"EventGroup":"01","EventTitle":"용의자 예매하고 기아 k3기회를 잡자","ThumnailImage":"http://img.cgv.co.kr/Front/Main/2013/1217/luckyprize_490.jpg","ThumnailLinkUrl":"http://www.cgv.co.kr/event/cultureplex/Lucky_D.aspx","Blank":false}];
            var popupData = {'List' : [{"Title":"BC카드","Contents":"<div class=\"item-wrap\">\r\n    <div class=\"item\">\r\n        <div style=\"text-align:center;\">\r\n            <a href=\"http://section.cgv.co.kr/discount/Special/discount/EventDetail.aspx?Idx=12695&pb=Y\" title=\"coupon\">\r\n                <img src=\"http://img.cgv.co.kr/images/popup/BC_web_popup.jpg\" alt=\"이벤트 문구들\" border=\"0\"/>\r\n            </a> \r\n        </div> \r\n    </div> \r\n</div>\r\n"},{"Title":"스쿨 오브 락","Contents":"<div class=\"item-wrap\">\r\n    <div class=\"item\">\r\n        <div style=\"text-align:center;\">\r\n            <a href=\"http://section.cgv.co.kr/event/2015/0312_school/Sugang.aspx\" title=\"CJ recruit\">\r\n                <img src=\"http://img.cgv.co.kr/images/popup/school_popup_web.jpg\" alt=\"이벤트 문구들\" border=\"0\"/>\r\n            </a> \r\n        </div> \r\n    </div> \r\n</div>\r\n"}]};
            var userPopupData = [];

            var sliderOptions = { 'effect': 'fade', 'auto': true };
            mainMotion = $('#slider').visualMotion(sliderOptions);

            var mSliderOptions = { 'effect': 'fade', callback: moveCallback };
            function moveCallback(_index) {
                $('#movie_slider > .now-showing').eq(_index).show().siblings('.now-showing').hide();
            }
            $('#movie_slider').visualMotion(mSliderOptions);

            function getCookie(cName) {
                cName = cName + '=';
                var cookieData = document.cookie;
                var start = cookieData.indexOf(cName);
                var cValue = '';
                if (start != -1) {
                    start += cName.length;
                    var end = cookieData.indexOf(';', start);
                    if (end == -1) end = cookieData.length;
                    cValue = cookieData.substring(start, end);
                }
                return unescape(cValue);
            }

            function setCookie(name, value, expiredays) {
                var todayDate = new Date();
                todayDate.setDate(todayDate.getDate() + expiredays);
                document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
            }

            function openPopup() {
                var cookie = getCookie("mainpopup");

                if (!popupData || !popupData.List || popupData.List.length < 1 || cookie == "true")
                    return;

                /* 전체 template */
                var $std = $('.skipnaiv'),
				options = {
				    '$target': $std,
				    'html': $("#temp_popup").tmpl(popupData)
				};
                app.instWin.add(options);
                /* 위치잡는 스크립트 */
                var offsetLeft = $('#contents').offset().left;
                $std.next('.layer-wrap').css('left', offsetLeft + 30);
                /* 슬라이더 */
                var popsliderOptions = {
                    //2014.09.15 디마팀 방재현님 요청으로 2초로 (수정 default : 4초), 이지용님 요청으로 3초로 재수정
                    'term'      : 3000,
                    'effect': 'none',
                    'auto': true,
                    callback: function (_index) {
                        $('.noti-num strong').text(_index + 1);
                    }
                };
                $('#mainNoticeSlider').visualMotion(popsliderOptions);
            }

            openPopup();

            $('#open_today').on('click', function () {
                var isChecked = $("#open_today").is(":checked");

                if (isChecked) {
                    var expdate = new Date();
                    expdate.setDate(expdate.getDate() + 1)

                    setCookie("mainpopup", "true", expdate);
                    $('.layer-wrap').remove();
                }

            });

            $('.tab-menu > li > a').on('click', function () {
                var filterType = $(this).attr('data-filter-type');
                var liObj = $('.tab-menu > li');
                var selectObj = $(this).parent('li');

                liObj.removeClass("on");
                liObj.attr("title", "");
                selectObj.addClass("on");
                selectObj.attr("title", "현재 선택");

                searchEventList(filterType);
                return false;

            });

            function searchEventList(filterType) {
                var count = 0;

                var $temp = $('<ul></ul>');

                for (var idx in eventData) {
                    var item = eventData[idx];

                    if (item['EventGroup'] == filterType) {
                        count++;
                        if (count > 4) break;
                        $("#temp_event").tmpl(item).appendTo($temp);
                    }
                }
                
                $('.sect-event').html($temp);
            }


           function OpenTown(){  

             var cookie = getCookie("townpop");

             if ( cookie == 'done')
                return;

             if($('#isTown').val() == 'Y') 
             {             
                  window.open('/user/popup/dongsungro-townpop.aspx', 'townpop', 'width=280,height=400,toolbar=no,scrollbars=no, status=0,top=0,left=0');
              
             }
           }


            function OpenVip(){  

             var cookie = getCookie("vip2015");

             if ( cookie == 'done')
                return;

             if($('#isVip').val() == 'Y') 
             {  
                  window.open('/user/popup/vip-2015.aspx', 'vip2015', 'width=320,height=380,toolbar=no,scrollbars=no, status=0,top=0,left=0');
              
             }
           }


            function OpenSystemPopup() {
                
                if (userPopupData && userPopupData.length > 0) {
                    for (var i=0;i<userPopupData.length;i++) {
                        var item = userPopupData[i];
                        var popupName = item['CookieName'];

                        if (getCookie(popupName) == 'done') { return; }

                        var option = 'width=' + item['Width'] + ',height=' + item['Height'] + ',toolbar=no,scrollbars=no,status=0,top=' + item['Y'] + ',left=' + item['X'];
                        var url = item['IsUrl'] == 'n' ? '/user/popup/personal-system.aspx?idx=' + item['IDX'] : item['Contents'];

                        var userPopup = window.open(url, popupName, option);
                        userPopup.focus();
                    }
                }
            }

            OpenTown();

            OpenVip();

            OpenSystemPopup();
            /* CGV 공지사항 */
            (function(a){a.fn.noticeTicker=function(b){var c={speed:700,pause:4000,showItems:3,animation:"",mousePause:true,isPaused:false,direction:"up",height:0};var b=a.extend(c,b);moveUp=function(g,d,e){if(e.isPaused){return}var f=g.children("ul");var h=f.children("li:first").clone(true);if(e.height>0){d=f.children("li:first").height()}f.animate({top:"-="+d+"px"},e.speed,function(){a(this).children("li:first").remove();a(this).css("top","0px")});if(e.animation=="fade"){f.children("li:first").fadeOut(e.speed);if(e.height==0){f.children("li:eq("+e.showItems+")").hide().fadeIn(e.speed)}}h.appendTo(f)};moveDown=function(g,d,e){if(e.isPaused){return}var f=g.children("ul");var h=f.children("li:last").clone(true);if(e.height>0){d=f.children("li:first").height()}f.css("top","-"+d+"px").prepend(h);f.animate({top:0},e.speed,function(){a(this).children("li:last").remove()});if(e.animation=="fade"){if(e.height==0){f.children("li:eq("+e.showItems+")").fadeOut(e.speed)}f.children("li:first").hide().fadeIn(e.speed)}};return this.each(function(){var f=a(this);var e=0;f.css({overflow:"hidden",position:"relative"}).children("ul").css({position:"absolute",margin:0,padding:0}).children("li").css({margin:0,padding:0});if(b.height==0){f.children("ul").children("li").each(function(){if(a(this).height()>e){e=a(this).height()}});f.children("ul").children("li").each(function(){a(this).height(e)});f.height(e*b.showItems)}else{f.height(b.height)}var d=setInterval(function(){if(b.direction=="up"){moveUp(f,e,b)}else{moveDown(f,e,b)}},b.pause);if(b.mousePause){f.bind("mouseenter",function(){b.isPaused=true}).bind("mouseleave",function(){b.isPaused=false})}})}})(jQuery);
            $('.sect-notice-list .inner').noticeTicker({ 
                speed: 500,
                pause: 5000,
                animation: 'slide',
                mousePause: true,
                showItems: 1
            });
        });
    })(jQuery);
//]]>
</script>
