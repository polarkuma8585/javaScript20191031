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
				
				이름 : <%= student.getName()%> <br />
				학번 : <%= student.getStudentId() %> <br />
				나이 : <%= student.getAge() %> <br />
				주소 : <%= student.getAddress() %> <br />
				전화번호 : <%= student.getTel() %> <br />
				
			
		</div>
		
		<div><jsp:include page="footer.jsp" /></div>
	</div>
</body>
</html>