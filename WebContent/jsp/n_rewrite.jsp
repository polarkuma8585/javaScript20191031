<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8");
%>
</head>
<body>
<div align="center">
	<div id="topmenu"><%@include file="topMenu.jsp" %></div>
	<div><h1>공지사항 입력</h1></div>
	<div>
		<form id="frm" name="frm" action="writeSave.jsp" method="post">
			<div>
			<%
				String name = request.getParameter("wsname");
				String subject = request.getParameter("wssubject");
				String contents = request.getParameter("wscontents");
			%>
			<table>	
				<tr>
					<th width="90">작성자</th><td><input style="width:730px" type="text" id="name" name="name" value="<%=name%>"></td>
				</tr>
				<tr>
					<th>제목</th><td><input style="width:730px" type="text" id="subject" name="subject" size="100" value="<%=subject%>"></td>
				</tr>
				<tr>
					<th>내용</th><td><textarea style="width:730px; resize:none" id="contents" name="contents" cols="100" rows="30" ><%=contents%></textarea></td>
				</tr>
			</table>
			</div>
			<div>
				<br />
				<button class="button" type="submit">저장</button>&nbsp;&nbsp;				
				<button class="button" type="button" onclick="location.href='notice.jsp'">목록보기</button>
			</div>
		</form>
	</div>
	<div id="footer"><%@include file="footer.jsp" %></div>
	</div>
</body>
</html>