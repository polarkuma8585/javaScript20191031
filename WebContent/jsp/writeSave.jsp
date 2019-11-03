<%@page import="java.sql.Date"%>
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
		<div id="topmenu"><%@ include file="topMenu.jsp"%></div>
		<div>
			<h1>공지사항 수정하기</h1>
		</div>
		<form id="refrm" name="refrm" action="n_rewrite.jsp" method="post">
		<div>
			<%
				//String name=request.getParameter("name");
				//Date wdate=Date.valueOf(request.getParameter("wdate"));  // string 타입을 date 타입으로 변경
				//String subject=request.getParameter("subject");
				//String contents=request.getParameter("contents");

				String name = (request.getParameter("name") == null) ? "1" : request.getParameter("name");
				String subject = (request.getParameter("subject") == null) ? "1" : request.getParameter("subject");
				String contents = (request.getParameter("contents") == null) ? "1" : request.getParameter("contents");
			%>
		
			<div>
				<table width="800" cellpadding="5px">
					<tr>
						<th width="100" >제목</th>
						<td>
						<%=subject%>
						<input type="hidden" id="wssubject" name="wssubject" value="<%=subject %>">
						</td>
						
						
					</tr>
					<tr>
						<th>작성자</th>
						<td>
						<%=name%>
						<input type="hidden" id="wssubject" name="wsname" value="<%=name%>">
						</td>
						
					</tr>
					<tr>
						<th colspan="4">내용</th>
					</tr>
					<tr align="left" valign="top">
						<td colspan="4" height="600" >
						<%=contents%>
						<input type="hidden" id="wssubject" name="wscontents" value="<%=contents%>">
						</td>
					</tr>
				</table>
				<br>
			</div>
		</div>
		<div>
			<button class="button" type="button" onclick="location.href='n_write.jsp'">다시 작성</button>&nbsp;&nbsp;
			<button class="button" type="submit" onclick="location.href='n_rewrite.jsp'">수정하기</button>&nbsp;&nbsp;
			<button class="button" type="button" onclick="location.href='notice.jsp'">목록보기</button>
		</div>
		</form>
		<br />
		<div id="footer"><%@ include file="footer.jsp"%></div>
	</div>
</body>
</html>