<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div><jsp:include page="topMenu.jsp" /></div>
		<div><h1>여기가 레코드 세부 내용을 보여주는 곳 입니다.</h1></div>
		<div>
			<button type="button" onclick="location.href='notice.jsp'">목록보기</button>
		</div>
		<div><jsp:include page="footer.jsp" /></div>
	</div>
	 <!--  액션태그 중 include, param, foward 정도만 사용  --> 
</body>
</html>