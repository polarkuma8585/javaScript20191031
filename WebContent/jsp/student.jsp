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
		<div class="contents_size">
			<div>
				<jsp:useBean id="student" class="co.micol.dto.Student" />
				<jsp:setProperty property="name" name="student" value="홍길동" />
				<jsp:setProperty property="studentId" name="student" value="2019001" />
				<jsp:setProperty property="address" name="student" value="대구광역시" />
				<jsp:setProperty property="age" name="student" value="20" />
				<jsp:setProperty property="tel" name="student" value="053-222-2222" />
			</div>
			<div>
				
				<h3>Jsp Bean 및 EL표현식을 통한 데이터 표현</h3>
				<!--  EL 표현식 -->
				<table>
				<tr align="center">
					<th>학번</th>
					<th>이름</th>
					<th>나이</th>
					<th>주소</th>
					<th>전화번호</th>
				</tr>
				<tr align="center">
					<td width="100"> ${student.studentId }</td> 
					<td width="100"> ${student.name }</td>
					<td width="50">${student.age }</td>
					<td width="300">${student.address }</td>
					<td width="200">${student.tel }</td>
				</tr>
				</table>
				<!-- 이름 : <jsp:getProperty property="name" name="student" /><br /> 
			학번 : <jsp:getProperty property="studentId" name="student" /><br />
			주소 : <jsp:getProperty property="address" name="student" /><br />
			나이 : <jsp:getProperty property="age" name="student" /><br />
			전화번호: <jsp:getProperty property="tel" name="student" /><br /> -->
				<div>
					<br />
					<button class="button" type="button"
						onclick="location.href='student2.jsp'">자바코드</button>
				</div>
			</div>
		</div>
		<div><jsp:include page="footer.jsp" /></div>

	</div>
</body>
</html>