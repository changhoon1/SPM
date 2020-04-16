<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div align="center">
	
		<h3>로그인 페이지</h3>
		<hr>
		<br>
		
		
		<form action="login_chk.jsp" method="post">
			<input type="text" name="id" placeholder="아이디"> <br><br>
			<input type="password" name="pw" placeholder="비밀번호"> <br><br>
			
			<input type="submit" value="로그인" > &nbsp; &nbsp;
			<input type="button" value="회원가입"  onclick="location.href='join.jsp'">
		
		</form>
	
	</div>
</body>
</html>