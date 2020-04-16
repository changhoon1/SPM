<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>  <script src="login.js"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<h3>회원가입 페이지</h3>
		<hr>
		<form action="join_chk.jsp" method="post"   >
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" id="id" name="id" placeholder="아이디">&nbsp; 	<input type="button" value="중복 체크" onclick="check();"> 
							<label id="label2"></label>
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" id="pwd1" name="pwd" placeholder="비밀번호"></td>
				</tr>
				
				<tr>
					<td>비밀번호 확인 &nbsp;</td>
					<td><input type="text" id="pwd2" onchange="pwchk();" placeholder="비밀번호 확인">
						<label id="label">(*필수 체크)</label>
					</td>
					
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" id="id" name="name" placeholder="이름"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" id="id" name="email" placeholder="이메일"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" id="id" name="address" placeholder="주소"></td>
				</tr>
				
			
			</table>
				<input type="button" value="회원가입" onclick="chkValidate();"> &nbsp; &nbsp;
				<input type="button" value="취소" onclick="location.href='login.jsp'">
</body>
</html>