<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<div align="center">
	<jsp:include page="include/header.jsp"/>
		<h3>로그인 페이지</h3>
		
		<br>
		
		<form action="login_chk.jsp" method="post">
			<input type="text" name="id" placeholder="아이디"> <br><br>
			<input type="password" name="pw" placeholder="비밀번호"> <br><br>
			
			<input type="submit" value="로그인" > &nbsp; &nbsp;
			<input type="button" value="회원가입"  onclick="location.href='join.jsp'">
		
		</form>
	
	</div>
	<jsp:include page="include/footer.jsp"/>
</body>
</html>