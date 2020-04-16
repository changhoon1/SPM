<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
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
	<jsp:useBean id="dto" class="board.DTO.BoardDTO"/>
<div align="center">	
	<table class="table">
		<tr>
			<th class="td">제목</th><td class="td"><input type="text" size="50"></td>
		</tr>
		<tr>
			<th class="td">후기</th><td class="td"><textarea name="content" rows="10" cols="50"></textarea></td>
		</tr>
		<tr>
			<th colspan="2" class="td"><input type="submit" value="수정완료">
		</tr>
	</table>
 </div>
</body>
</html>