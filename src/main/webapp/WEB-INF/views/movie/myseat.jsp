<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>좌석 선택</title>

<style type=text/css>
	td {border:0.1em; border-bottom-style:solid; font-family: 맑은고딕; }
	tr {align:center; border-bottom-style:solid; text-align: center; font-family: 맑은고딕; }
	
	 input.img_button {
        background: url(./resources/img/button-border.jpg) no-repeat;
        border: black;
        width: 40px;
        height: 40px;
        cursor: pointer;
        background-color: black;  
        font-size: 10pt;      
      }
</style>



</head>
<body>
<div id='iframe_seat'>
<h1>좌석 예약 시스템 [VER 1.0]</h1>
<hr>
<br>
<div align=center style="float: left; position:fixed;">
	<img src="./resources/img/movie-screen.jpg">
</div>
<br>
<div style="float: left; position:fixed; margin-left: 70px; margin-top:50px">
<table style="border:0.1em;border-style:solid;">
	<tr><td>
		<c:forEach var="i" begin="1" end="49">	
			<c:choose>
		        <c:when test = "${i %7 == 0}">
		         <input type="button" name = "seat[${i}]" value = "L${i}"  class="img_button" >
		         <br>
		        </c:when>
		        
		        <c:otherwise>
		            <input type="button" name = "seat[${i}]" value = "L${i}" class="img_button" >
		        </c:otherwise>
		    </c:choose>
		</c:forEach>
	</td></tr>
</table>
</div>

<div style="float:left; position:fixed; margin-left: 400px; margin-top:50px;">
<table style="border:0.1em;border-style:solid;">
	<tr><td>
		<c:forEach var="j" begin="1" end="49">	
			<c:choose>
		        <c:when test = "${j %7 == 0}">
		         <input type="button" name = "seat[${j}]" value = "R${j}" class="img_button" >
		         <br>
		        </c:when>
		        
		        <c:otherwise>
		            <input type="button" name = "seat[${j}]" value = "R${j}" class="img_button" >
		        </c:otherwise>
		    </c:choose>
		</c:forEach>
	</td></tr>
</table>
</div>
	<div style="margin-top: 350px;float: bottom; position:fixed; background-color: white">
		<form name=movie_frm action="#" method="post">
		<table style="border:0.1em;border-style:solid; width:800px">					
			<tr>
				<td colspan="4" align="center" style="font-weight: bold;">나의 예약정보</td>
				
			</tr>

			<tr style=width:150px;>
				<td>예약할 영화</td> <td>선택한 좌석</td> <td>인원</td> <td>가격</td>
			</tr>
			
			<tr>
				<td>
				 <SELECT onchange="" name="select_movie" style="width:185px; padding-left: 15%; padding-right: 5%; ">
                                <OPTION value="movie1">#위플래시#</OPTION>
                                <OPTION value="movie2">#킹스맨#</OPTION>
                                <OPTION value="movie3">#소셜포비아#</OPTION>
                                <OPTION value="movie4">#채피#</OPTION>
                                <OPTION value="movie5">#살인의뢰#</OPTION>
                 </SELECT>                                                                                                                               				
				</td> 
				<td>D-30</td> 
				<td>2명</td>
				<td>결제 금액</td>
			</tr>
						
			<tr>
				<td colspan="4" align="center" style="font-weight: bold;">최종 확인</td>
				
			</tr>
				
			<tr>
				<td>킹스맨</td> 
				<td>D-30</td>
				<td>2명</td>
				<td>1만원</td>
			</tr>
			
			<tr>
				<td colspan="2" width=50%><input type="submit" value="예약하기"></td> 
				<td colspan="2" width=50%><input type="reset" value="다시하기"></td>
									
			</tr>		
		</table>
		</form>
	</div>
</div>		
</body>
</html>

