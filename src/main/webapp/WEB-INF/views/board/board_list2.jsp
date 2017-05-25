<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page session="false" %>
<html>
<head>
	<title>[board_list.jsp]</title>
	<style type="text/css">
		b,input, textarea { font-size:15pt; font-weight:bold; font-family:'맑은고딕' ; }
		td { font-size:10pt; font-weight:bold; font-family:'맑은고딕'; height: 20; border-bottom-style: solid; border-bottom-width: 1;  }
		a { font-size:10pt; font-weight:bold; font-family:'맑은고딕'  }
		a:link { text-decoration:none; color:#333333; }
		a:visited { text-decoration:none; color:#333333; }
		a:active { text-decoration:none; color:#333333; }
		a:hover { text-decoration:underline; color:#333333; }
		tr, td { text-align:center }				
		
    	tr.cc:hover { background-color: skyblue; } 
	
				
	</style>
	
	<script language="JavaScript">

		function na_open_window(name, url, left, top, width, height, toolbar, menubar, statusbar, scrollbar, resizable)
		{
		  toolbar_str = toolbar ? 'yes' : 'no';
		  menubar_str = menubar ? 'yes' : 'no';
		  statusbar_str = statusbar ? 'yes' : 'no';
		  scrollbar_str = scrollbar ? 'yes' : 'no';
		  resizable_str = resizable ? 'yes' : 'no';
		  window.open(url, name, 'left='+left+',top='+top+',width='+width+',height='+height+',toolbar='+toolbar_str+',menubar='+menubar_str+',status='+statusbar_str+',scrollbars='+scrollbar_str+',resizable='+resizable_str);
		}


</script>
	
</head>
<body>
	<table style="width:800px; border:0.1em; border-style:solid; ">
		
		<tr height=30 >
			<td colspan=5 align=center>
				<img src="./resources/img/board-bar.gif">
				
				<p><a href="board_insertform.do">
				[CGV_자유게시판 글쓰기] &nbsp;&nbsp;</a></p>
				
				
				<br>
			</td>
			
		</tr>
		<tr>
			<th colspan=5><h2>자유게시판 [관리자모드] </h2></th>
		</tr>
		
		<tr class="cc" bgcolor=skyblue height=30>
			<td width=20%>글번호</td>
			<td width=20%>이름</td>
			<td width=20%>제목</td>
			<td width=20%>성별</td>
			<td width=20%>이미지</td>
		</tr>
		
	<c:forEach  var="bean"  items="${naver}">
		<tr class="cc" height=30>
			<td><b> ${bean.hobby_idx} </b></td>
			<td><b>${bean.name} </b></td>
			<td><b><a href="javascript:na_open_window('win', 'board_adminDetail.do?hobby_idx=${bean.hobby_idx }', 300, 200, 850, 500, 0, 0, 0, 0, 0)" target="_self">${bean.title}</a></b></td>
			<td><b> ${bean.gender} </b></td>
			<td> <img src= "upload/${bean.img_file_name}" width=30 height=30> </td>
		</tr>	
	</c:forEach>
	</table>
	
</body>
</html>




