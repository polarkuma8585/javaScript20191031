<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/menu.css"> 
</head>
<body>
	  
	<div align="center">
		<div class="menu_div" id="menubar">
			<ul class="ul">
				<li class="li"><a class="a" href="main.jsp">홈</a></li>
				<li class="li"><a class="a" href="request.jsp">요청객체</a></li>
				<li class="li"><a class="a" href="notice.jsp">공지사항</a></li>
				<li class="li"><a class="a" href="blog.jsp">블로그</a></li>
				<li class="li"><a class="a" href="student.jsp">학생관리</a></li>
				<li class="li"><a class="a" href="dbconnect.jsp">DB연결</a></li>
				
				<c:choose>
					<c:when test="${empty id }">
					<li class="li"><a class="a" href="#">회원가입</a></li>
					</c:when>
					<c:otherwise>
					<li class="li"><a class="a" href="#">회원정보조회</a></li>	
					</c:otherwise>
				</c:choose>
				
				<c:if test="${id == 'admin'}">
				<li class="li"><a class="a" href="#">관리자모드</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</body>
</html>