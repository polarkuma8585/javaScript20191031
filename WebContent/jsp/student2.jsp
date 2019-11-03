<%@page import="co.micol.dto.Student"%>
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
				<%
					Student student = new Student();
					student.setName("김길자");
					student.setStudentId("2019002");
					student.setAddress("대구광역시");
					student.setAge(20);
					student.setTel("010-0000-2222");
				%>	
			</div>
			<div>
				<h3>JAVA 코드를 이용한 데이터 표현</h3>
				<table>
					<tr align="center">
					<th>학번</th>
					<th>이름</th>
					<th>나이</th>
					<th>주소</th>
					<th>전화번호</th>
					</tr>
					<tr align="center">
					<td width="100"><%= student.getStudentId() %></td>
					<td width="100"><%= student.getName()%></td>
					<td width="50"><%= student.getAge() %></td>
					<td width="300"><%= student.getAddress() %></td> 
					<td width="200"><%= student.getTel() %></td>
					</tr> 
				</table>
			</div>
			<br />
			<div><button class="button" type="button" onclick="location.href='student.jsp'">EL표현식</button></div>
		</div>
		<div><jsp:include page="footer.jsp" /></div>
	</div>
</body>
</html>