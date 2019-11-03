<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
		<div><h3>DB에서 가져온 데이터</h3></div>
		<%!Connection conn; // DBMS와 연결을 유지하는 객체
	PreparedStatement pstmt; // sql문을 실행하는 객체
	ResultSet rs; // record set 을 담는 객체

	String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 접속하려는 DB
	String driver = "oracle.jdbc.driver.OracleDriver"; // Driver
	String user = "jaeheum";
	String pw = "jaeheum";%>

		<%
			try {
				Class.forName(driver); // driver load.
				conn = DriverManager.getConnection(url, user, pw);
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}

			String sql = "select * from student";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				out.println("<table>");
				out.println("<tr align=center><th>아이디</th><th>이름</th><th>주소</th><th>나이</th><th>전화번호</th>");
				while (rs.next()) {
					String id = rs.getString("studentId");
					String name = rs.getString("studentname");
					String addr = rs.getString("studentaddr");
					int age = rs.getInt("studentage");
					String tel = rs.getString("studenttel");

					out.println("<tr class=tr align=center><td width=100>" + id + "</td><td width=100>" + name
							+ "</td><td width=300>" + addr + "</td><td width=50>" + age + "</td><td width=200>" + tel
							+ "</td></tr>");
					//out.println("<tr><th>아이디</th><td>"+ id + "</td></tr>");
					//out.println("<tr><th>이름</th><td>" + name + "</td></tr>");
					//out.println("<tr><th>주소</th><td>" + addr + "</td></tr>");
					//out.println("<tr><th>나이</th><td>" + age + "</td></tr>");
					//out.println("<tr><th>전화번호</th><td>" + tel + "</td></tr>");
					//out.println("<tr><td colspan=2 height=10></tr>");

				}
				out.println("</table><br />");
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				rs.close(); // 생성한 객체의 반대순서로 종료.
				pstmt.close();
				conn.close();
			}
		%>
		</div>
		<div><jsp:include page="footer.jsp" /></div>
	</div>
</body>
</html>