<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>  
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath }"/>

<link rel="stylesheet" media="all" type="text/css" href="<c:url value="./resources/css/basic.css"/>" />
<link rel="stylesheet" media="all" type="text/css" href="<c:url value="./resources/css/demo.css"/>" />
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
    <script type="text/javascript" src="<c:out value='./resources/popup/jquery.superbox-min.js'/>"></script>
    <script type="text/javascript" src="<c:out value='./resources/js/basic.js'/>"></script>
    <script type="text/javascript" src="<c:out value='./resources/js/jquery.simplemodal.js'/>"></script>
<style>
	#item_tab{width:100%; border:1px solid gray;}
</style>
<script>
	
	
	

</script>
   <c:set var="context" value="${pageContext.request.contextPath }"/>
<c:set var="PAGESIZE" value="10"/>
<c:choose>
	<c:when test="${(totCount%PAGESIZE) eq 0}">
		<c:set var="totPage" value="${totCount/PAGESIZE}"/>
	</c:when>
	<c:otherwise>
		<c:set var="totPage" value="${totCount/PAGESIZE+1}"/>
	</c:otherwise>
</c:choose>
<c:set var="startPage" value="${pageNO-((pageNO-1)%PAGESIZE) }" />
<c:choose>
	<c:when test="${startPage+PAGESIZE-1 le totPage}">
		<c:set var="lastPage" value="${startPage+PAGESIZE-1}"></c:set>		
	</c:when>
	<c:otherwise>
		<c:set var="lastPage" value="${totPage}"></c:set>
	</c:otherwise>
</c:choose> 
<div id="content_product">
 	<div id="imgList">
 	<table>
 		<tr align="center">
		 <c:forEach items="${itemImgList}" var="item" begin="0" end="3" step="1"  varStatus="status"> 
			<td align="center" >
			<a href="${context}/itemDetail.do?item_no=${item.item_no}" >			
			<img src="./resources/img/${item.img_name}" alt="${item.img_name}" width="180" height="300" style="margin-left:10px;"  />
			</a><br>			
			
		
 	
 	<div id='content'>
		<div id='basic-modal'>
			 <a href='#' class='basic'>
			 	<img id="iframe_parent" src="./resources/img/movie-poster-yeme.jpg">
			 </a>
			 
		</div>
		
		<!-- modal content -->
		<div id="basic-modal-content">
			<jsp:include page="myseat.jsp"></jsp:include>
		</div>

		<!-- preload the images -->
		<div style='display:none'>
			<img src='./resources/img/basic/x.png' alt='' />
		</div>
	</div>
 	
 	<!-- TEST END -->
			</td>
		 </c:forEach> 
	</tr>
 	</table>
 	
 	
 	
 	</div>
 	<div id="popup3" title="Basic dialog" style="display:none">
  <p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
</div>
 	<br><br>
 	<div id="list">
 	<table id='item_tab' style='width:100%; border:1px solid gray;'>
	<tr align="right">
	<td colspan="12">
			<font size="2"> 등록된 영화  : ${totCount}</font>&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
	<tr style='align:center;border:1px solid gray'  bgcolor="skyblue" >
		<th style='width:25%;'>번호</th>
		<th style='width:25%;'>영화제목</th>
		<th style='width:25%;'>카테고리</th>
		<th style='width:25%;'>이미지</th>
			
	</tr>
	<c:forEach begin="1" end="10" step="1">
		${i}
	</c:forEach>
	
	<c:forEach var="item" items="${list}"  varStatus="status">
		<tr>
			<%-- <td style='width:10%;'>${status.index+10-1}</td> --%>	
			<td style='width:25%;'>			
			${item.item_no}
			</td>
			<td style='width:25%;color:red'><a href="${context}/itemDetail.do?item_no=${item.item_no}">${item.item_name}</a></td>
			<td style='width:25%;'>${item.cate_name}</td>
			<td style='width:25%;'><img src="./resources/img/${item.img_name}" width=70 height=110></td>		
		</tr>
	</c:forEach>
	<tr align="center">
		<td colspan="6">
			<c:if test="${startPage-PAGESIZE gt 0}">
				<a href="${context}/control/item.do?command=main&pageNO=${startPage-PAGESIZE}">◀이전</a>
			</c:if>
			<c:forEach begin="${startPage}" end="${lastPage}" step="1" varStatus="i">
				 <c:choose>
					 <c:when test="${i.index == pageNO }">
						<font color=red>${i.index}</font>
					</c:when> 
					 <c:otherwise>
						<a href="${context}/control/item.do?command=main&pageNO=${i.index}">${i.index}</a>
					</c:otherwise> 
				</c:choose>
			</c:forEach>
			<c:if test="${startPage+PAGESIZE le totPage}">
				<a href="${context}/control/item.do?command=main&pageNO=${startPage+PAGESIZE}">다음▶</a>				
			</c:if>
		</td>
	</tr>
	
	<tr align="center">
		<td colspan="12">
			<form action="${context}/itemSearch.do" method="post">
				<select name="keyField" id="">
					<option value="itemNO" selected="selected">영화명</option>
					<option value="itemName" >시리얼넘버</option>
					<option value="cateName">카테고리</option>
				</select>
				<input type="text" name="keyword"  />
				<input type="hidden" name="pageNO"  />
				<input type="hidden" name="command" value="main"  />
				<input type="submit" value="검 색" />
			</form>
										
		</td>
	</tr>
 </table>
 </div>
</div>
