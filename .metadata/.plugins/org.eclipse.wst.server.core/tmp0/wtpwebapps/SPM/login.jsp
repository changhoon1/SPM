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
	
		<h3>�α��� ������</h3>
		<hr>
		<br>
		
		
		<form action="login_chk.jsp" method="post">
			<input type="text" name="id" placeholder="���̵�"> <br><br>
			<input type="password" name="pw" placeholder="��й�ȣ"> <br><br>
			
			<input type="submit" value="�α���" > &nbsp; &nbsp;
			<input type="button" value="ȸ������"  onclick="location.href='join.jsp'">
		
		</form>
	
	</div>
</body>
</html>