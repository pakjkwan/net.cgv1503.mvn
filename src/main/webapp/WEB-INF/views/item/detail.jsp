<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>영화 상세페이지</title>
</head>
<body>
	<div class="wrapc">

		<div align=center>
			<table border="1" style="border-style:solid;">
			<tr>
				<td style="font-weight:bold; font-size:20;" >
					<font style="font-size: 15pt;">${itemDetail.item_name} &nbsp;상세페이지</font>
				</td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			</tr>
			<tr>
				<td><img src="./resources/img/${itemDetail.img_name}" height="600px;"width="400px;"></td>
			</tr>						
			</table>
			<br>
			<table border="1" style="width:800px;">
			<tr style="border-style:solid; background-color:lightblue;">
			<td>영화 상영시간</td><td>영화 등급</td><td>영화 평점</td>
			</tr>
			
			<tr>
			<td>준비중</td><td>준비중</td><td>준비중</td>
			</tr>
			</table>
		</div>
	</div>

</body>
</html>
