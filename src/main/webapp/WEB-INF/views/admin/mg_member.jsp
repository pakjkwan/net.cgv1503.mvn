<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<style>
	#item_tab{width:100%; border:1px solid gray;}
</style>

<style type="text/css">		
		a:link { text-decoration:none; color:#333333; }
		a:visited { text-decoration:none; color:#333333; }
		a:active { text-decoration:none; color:#333333; }
		a:hover { text-decoration:underline; color:#333333; }
	</style>

<script>
	$(function(){
		$('#popup3').dialog();
	});
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
 	
 	<div id="list">
 	<table id='item_tab' style="border:solid 1px gray; width:100%;border-collapse: collapse;">
	<tr>
		<td>이름</td>	<td>Password</td>	<td>Mobile</td>	<td>E-mail</td>
	</tr>

	<c:forEach var="member" items="${list}"  varStatus="status" begin="0" end="30" step="1">
		<tr>			
			<td style='width:25%;'><a href="member_detail.do?email=${member.email}">${member.name}</a></td>
			<td style='width:25%;'>${member.passwd}</td>
			<td style='width:25%;'>${member.mobile}</td>
			<td style='width:25%;'>${member.email}</td>	
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
			<form action="${context}/control/item.do" method="post">
				<select name="keyField" id="">
					<option value="itemNO" selected="selected">제품명</option>
					<option value="itemName" >제품번호/option>
					<option value="saleType">판매용</option>
					<option value="cateName">카테고리</option>
				</select>
				<input type="text" name="keyword" value="" />
				<input type="hidden" name="pageNO"  />
				<input type="hidden" name="command" value="main"  />
				<input type="submit" value="검 색" />
			</form>
										
		</td>
	</tr>
 </table>
 </div>
</div>
