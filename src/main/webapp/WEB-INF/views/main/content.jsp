<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<h3><img src="http://img.cgv.co.kr/R2014/images/title/h3_movie_selection.gif" alt="MOVIE SELECTION" /></h3>
<div class="cols-movies">
	<div id="Selection_s" class="col-slider" >
        <!-- <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Selection_L" width="850" height="388" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Movie_Selection_L" id="Movie_Selection_L"></iframe> -->
        <!-- <iframe src="./views/main/contentIframe.jsp" width="850" height="450" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" /> -->
        
    <video controls preload="auto" autoplay="true" loop="loop" muted="muted" volume="0" width="980">
 	<!-- <source src="http://media.w3.org/2010/05/sintel/trailer.mp4" -->
 	<source src="http://media.w3.org/2010/05/sintel/trailer.mp4"
        type='video/mp4; codecs="avc1, mp4a"' autoplay="autoplay" >
 	<source src="http://media.w3.org/2010/05/sintel/trailer.ogv"
        type='video/ogg; codecs="theora, vorbis"'>
 	<p>Your user agent does not support the HTML5 Video element.</p>
	</video>
        
	</div>
	
</div>
<h3><img src="http://img.cgv.co.kr/R2014/images/title/h3_event.gif" alt="EVENT" /></h3>
<ul class="tab-menu">
	<li class="on">
        <a href="#" data-filter-type="08" title="현재 선택됨" onclick="setClickLog('/메인/이벤트/CGV스페셜');" >CGV스페셜</a>
    </li>
	<li>
        <a href="#" data-filter-type="02" onclick="setClickLog('/메인/이벤트/예매이벤트');" >예매이벤트</a>
    </li>
	<li>
        <a href="#" data-filter-type="07" onclick="setClickLog('/메인/이벤트/아트하우스');" >CGV아트하우스</a>
    </li>
	<li>
        <a href="#" data-filter-type="03" onclick="setClickLog('/메인/이벤트/할인혜택');" >할인혜택</a>
    </li>
	<li class="last">
        <a href="#" data-filter-type="04" onclick="setClickLog('/메인/이벤트/멤버쉽');" >멤버쉽</a>
    </li>
</ul>