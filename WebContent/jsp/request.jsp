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
		<div id="topmenu"><%@ include file="topMenu.jsp" %></div>
		<div><h1>개인정보 입력</h1></div>
		<div>
			<form id="frm" name="frm" action="result.jsp" method="post">
				<div>
					<table>	
						<tr align="center">
							<th width="100">이름</th>
							<td width="200"><input style="width:180px" type="text" id="name" name="name"></td>
						</tr>
						<tr align="center">
						<th>나이</th>
						<td><input style="width:180px" type="text" id="age" name="age"></td>
						</tr>
						<tr align="center">
							<th>취미</th>
							<td><input type="checkbox" id="hobbys1" name="hobbys" value="독서"><label for="hobbys1">독서</label> &nbsp;	 
								<input type="checkbox" id="hobbys2" name="hobbys" value="바둑"><label for="hobbys2">바둑</label> &nbsp;
								<input type="checkbox" id="hobbys3" name="hobbys" value="낚시"><label for="hobbys3">낚시</label>	
							</td>
						</tr>
						<tr align="center">
							<th>지역</th>
							<td><select style="width:180px" id="city" name="city">
									<option value="" selected>지역선택</option>
									<option value="대구">대구</option>
									<option value="서울">서울</option>
									<option value="부산">부산</option>
									<option value="대전">대전</option>
							</select>
						</tr>
					</table>
				</div>
				<div>
					<br /> 
					<input type="submit" value="전송">&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="취소">
				</div>
			</form>
		</div>
		<div id="footer"><%@ include file="footer.jsp" %></div>
	</div>
</body>
</html>