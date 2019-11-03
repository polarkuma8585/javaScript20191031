<%@ page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% request.setCharacterEncoding("UTF-8"); %>
</head>
<body>
	<div align="center">
		<div id="topmenu"><%@ include file="topMenu.jsp" %></div>
		<div>
			<h3>개인정보</h3>
		</div>
		<div>
			<table>
				<tr align="center">
					<th align="center" width="100">이름</th>
					<td width="250"><%=request.getParameter("name") %></td>
				</tr>
				<tr align="center">
					<th>나이</th>
					<td><%=request.getParameter("age") %></td>
				</tr>
				<tr align="center">
					<th>취미</th>
					<% String hobbys[]=request.getParameterValues("hobbys"); %>
					<td><%=Arrays.toString(hobbys) %></td>
				</tr>
				<tr align="center">
					<th>지역</th>
					<td><%=request.getParameter("city") %></td>
				</tr>
			</table><br />
		<div><button class="button" type="button" onclick="location.href='request.jsp'">이전으로</button></div>
		</div>
		<div id="footer"><%@ include file="footer.jsp" %></div>
	</div>
</body>
</html>