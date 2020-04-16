<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.table {
  
    border: 1px solid #444444;
    border-collapse: collapse;
  }
   .td {
    border: 1px solid #444444;
     padding: 10px;
  }
</style>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<fmt:requestEncoding value="utf-8"/>
<div align="center">
<form action="write_save.jsp" method="post">
<table class="table">
	
	<tr>
		<th class="td">제목</th> <td class="td"><input type="text" name="title" size="50"></td>
	</tr>
	<tr>
		<th class="td">내용</th> <td class="td"><textarea name="content" rows="10" cols="50"></textarea></td>
	</tr>
	<tr>

		<th colspan="2" class="td"><input type="submit" value="저장">&nbsp;&nbsp;
		&nbsp;&nbsp;<input type="button" value="취소" onclick="location.href='list.jsp'"></th>
	</tr>
</table>
</form>
</div>
</body>
</html>

























