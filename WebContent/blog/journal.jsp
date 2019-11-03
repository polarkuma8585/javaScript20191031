<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/menu.css">
</head>
<body>
	<div align="center">
		<span>
			<ul class="jul">
				<li><a href="journal_write.jsp" id="journal_write" target="journal">글쓰기</a></li>
				<li><a href="" id="">테스트</a></li>
			</ul>
		</span>
		<span>
			<table width="600">
				<tr align="center">
					<br />
					<td class="jtd">글번호</td>
					<td>글 제목</td>
					<td class="jtd" width="100">작성자</td>
				</tr>
				<tr class="tr" align="center">
					<td class="jtd" width="50">1</td>
					<td><a class="a3" href="blogtest.jsp" target="journal">2019.10.31</a></td>
					<td class="jtd" width="100">돌돌이</td>
				</tr>
				<tr class="tr" align="center">
					<td class="jtd">2</td>
					<td><a class="a3" href="blogtest.jsp" target="journal">2019.11.01</a></td>
					<td class="jtd">돌돌이</td>
				</tr>
				<tr class="tr" align="center">

					<td class="jtd">3</td>
					<td><a class="a3" href="blogtest.jsp" target="journal">2019.11.02</a></td>
					<td class="jtd">돌돌이</td>
				</tr>
				<tr class="tr" align="center">
					<td class="jtd">4</td>
					<td><a class="a3" href="blogtest.jsp" target="journal">2019.11.03</a></td>
					<td class="jtd">돌돌이</td>
				</tr>
			</table>
			<br />
			<br />
		</span>
		<span>
			<iframe class="iframe" src="blogdefault.jsp" id="journal" name="journal" width="600" height="500" scrolling="no">
			</iframe>
		</span>
	</div>
</body>
</html>