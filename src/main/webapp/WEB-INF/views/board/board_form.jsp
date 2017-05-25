<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page session="false" %>
<html>
<head>
	<title>[board_form.jsp]</title>
	<style type="text/css">
		b,input, textarea{ font-size:10pt; font-weight:bold; font-family:'맑은고딕'  }
	</style>
</head>
<body>
	<div align='center'>
	<h3 style="font-family:'맑은고딕'; color:skyblue; font-weight:bold;" >CGV 자유게시판</h3>
	
	<form action="board_insert.do?hobby="${hobby}" method="post"  enctype="multipart/form-data">
		<table>
		<tr>
			<td><b>이름:</b> <input type=text  name="name"><br></td>
		</tr>
		<tr>
			<td><b>제목:</b> <input type=text  name="title"><br></td>
		</tr>
		<tr>
			<td><b>내용:</b>	<textarea name="content" rows="10" cols="50"></textarea> <br></td>
		</tr>
		<tr>
			<td><b>성별:</b>
			<input type="radio" value="man"  name="gender"><b>man</b>&nbsp;
			<input type="radio" value="woman"  name="gender"><b>woman<br>
			</td>
		</tr>
		<tr>	
			<td><b>관심사:</b>
			<input type="checkbox" value="study" name="hobby"><b>독서</b> &nbsp;
			<input type="checkbox" value="soccer" name="hobby"><b>운동</b>&nbsp;	
			<input type="checkbox" value="movie" name="hobby"><b>영화 감상</b> &nbsp;
			<input type="checkbox" value="traval" name="hobby"><b>등산</b> &nbsp;
			<input type="checkbox" value="watch" name="hobby"><b>스포츠 관람</b> &nbsp;
			<input type="checkbox" value="shopping" name="hobby"><b>쇼핑</b> &nbsp;
			<br>
			</td>
		</tr>
		<tr>
			<td><b>파일:</b>
			<input type="file"  name="upload_f"><p> 
			<input type="submit"  value=" 글쓰기 ">
			<input type="reset"  value=" 취소">
			</td>
		</tr>
		</table>
	</form>
	</div>	
<p>

</body>
</html>




