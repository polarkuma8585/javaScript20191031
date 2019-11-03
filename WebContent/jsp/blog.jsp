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
		<div id="topmenu"><%@include file="topMenu.jsp"%></div>
		<div class="contents_size">
			<div>
				<h3>B L O G</h3>
			</div>
			<div>
				<table width="800" height="700">
					<tr>
						<td width="100">
							<ul class="bul">
								<li><a href="../blog/journal.jsp" target="blogMain">일기</a></li>
								<li><a href="../blog/schedule.jsp" target="blogMain">일정</a></li>
								<li><a href="../blog/project.jsp" target="blogMain">프로젝트</a></li>
							</ul>
						</td>
						<td><iframe class="iframe" src="../blog/blogdefault.jsp"
								name="blogMain" width="800" height="690" scrolling="no">
							</iframe>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div id="footer"><%@include file="footer.jsp"%></div>
	</div>
</body>
</html>