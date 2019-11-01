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
		<div>
			<jsp:useBean id="student" class="co.micol.dto.Student" />
				<jsp:setProperty property="name" name="student" value="홍길동" />
				<jsp:setProperty property="studentId" name="student" value="2019001" />
				<jsp:setProperty property="address" name="student" value="대구광역시" />
				<jsp:setProperty property="age" name="student" value="20" />
				<jsp:setProperty property="tel" name="student" value="053-222-2222" />
		</div>
		<div>
			<!--  EL 표현식 -->
			이름 : ${student.name }<br /> 
			학번 : ${student.studentId }<br />
			주소 : ${student.address }<br />
			나이 : ${student.age }<br />
			전화번호 : ${student.tel }<br />
			
			<!-- 이름 : <jsp:getProperty property="name" name="student" /><br /> 
			학번 : <jsp:getProperty property="studentId" name="student" /><br />
			주소 : <jsp:getProperty property="address" name="student" /><br />
			나이 : <jsp:getProperty property="age" name="student" /><br />
			전화번호: <jsp:getProperty property="tel" name="student" /><br /> -->
		</div>
		<div>
			<br /><button type="button" onclick="location.href='student2.jsp'">자바코드</button>
		</div>
		<div><jsp:include page="footer.jsp" /></div>
	</div>
</body>
</html>