<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/menu.css"> 
</head>
<body>
	<div align="center">
		<form id="frm" name="frm" action="J_writeSave.jsp" method="post">
			<div>
			<table width="600">	<br />
				<tr align="center">
					<th colspan="2">일기 쓰기</th>
				</tr>
				<tr>
					<th width="100">작성자</th><td><input style="width:480px" type="text" id="name" name="name"></td>
				</tr>
				<tr>
					<th>제목</th><td><input style="width:480px" type="text" id="subject" name="subject" size="100"></td>
				</tr>
				<tr>
					<th>내용</th><td><textarea style="width:480px; resize:none" id="contents" name="contents" cols="50" rows="15" ></textarea></td>
				</tr>
			</table>
			</div>
			<div>
				<br />
				<button class="button" type="submit">저장</button>&nbsp;&nbsp;				
			</div>
		</form>
	</div>
</body>
</html>