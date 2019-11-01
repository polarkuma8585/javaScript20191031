<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div id="topmenu"><%@include file="topMenu.jsp" %></div>
		<div><h2>공지사항</h2></div>
		<div>
			<table>
				<tr align="center">
					<th width="70">순번</th>
					<th width="200">제목</th>
					<th width="150">작성자</th>
					<th width="150">작성날짜</th>
					<th width="70">조회수</th>
				</tr>
				<!-- 내용이 반복되는 부분 시작 -->
				<tr align="center" onclick="location.href='view.jsp'">
					<td width="70">1</td>
					<td style="cursor:pointer" width="300">&nbsp;&nbsp;&nbsp;가을이 왔네요...</td>
					<td width="150">홍길동</td>
					<td width="150">2019-10-31</td>
					<td width="70">1</td>
				</tr>
				<tr align="center" onclick="location.href='view.jsp'">
					<td width="70">2</td>
					<td style="cursor:pointer" width="300">&nbsp;&nbsp;&nbsp;오늘은 휴가입니다.</td>
					<td width="150">홍길동</td>
					<td width="150">2019-10-31</td>
					<td width="70">1</td>
				</tr>
				<tr align="center" onclick="location.href='view.jsp'">
					<td width="70">3</td>
					<td style="cursor:pointer" width="300">&nbsp;&nbsp;&nbsp;회사 휴무일 공지</td>
					<td width="150">홍길동</td>
					<td width="150">2019-10-31</td>
					<td width="70">1</td>
				</tr>
				<!-- 레코드 끝 -->
			</table>
		</div>
		<div>
			<br />
			<!--<c:if test="${!empty name}" />  <!-- name 값이 없으면 버튼 사라짐 -->
			<c:if test="${grant == s}">
			<button type="button" onclick="location.href='n_write.jsp'">글쓰기</button>
			</c:if>
		</div>
		<div id="footer"><%@include file="footer.jsp" %></div>
	</div>
</body>
</html>