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
		<h3>ȸ������ ������</h3>
		<hr>
		<form action="join_chk.jsp" method="post"   >
			<table>
				<tr>
					<td>���̵�</td>
					<td><input type="text" id="id" name="id" placeholder="���̵�">&nbsp; 	<input type="button" value="�ߺ� üũ" onclick="check();"> 
							<label id="label2"></label>
					</td>
				</tr>
				<tr>
					<td>��й�ȣ</td>
					<td><input type="text" id="pwd1" name="pwd" placeholder="��й�ȣ"></td>
				</tr>
				
				<tr>
					<td>��й�ȣ Ȯ�� &nbsp;</td>
					<td><input type="text" id="pwd2" onchange="pwchk();" placeholder="��й�ȣ Ȯ��">
						<label id="label">(*�ʼ� üũ)</label>
					</td>
					
				</tr>
				<tr>
					<td>�̸�</td>
					<td><input type="text" id="id" name="name" placeholder="�̸�"></td>
				</tr>
				<tr>
					<td>�̸���</td>
					<td><input type="text" id="id" name="email" placeholder="�̸���"></td>
				</tr>
				<tr>
					<td>�ּ�</td>
					<td><input type="text" id="id" name="address" placeholder="�ּ�"></td>
				</tr>
				
			
			</table>
				<input type="button" value="ȸ������" onclick="chkValidate();"> &nbsp; &nbsp;
				<input type="button" value="���" onclick="location.href='login.jsp'">
</body>
</html>