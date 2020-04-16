<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="include/header.jsp"/>

<meta charset="UTF-8">
<style type="text/css">
	.table {
  
    border: 1px solid #444444;
    border-collapse: collapse;
    border-color: white;
    width: 400px;
    height: 200px;
  }
   .td {
    border: 1px solid #444444;
     padding: 10px;
  }
</style>
<title>Insert title here</title>
</head>
<body>list.jsp<br>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div align="center">
	<table class="table">
		<caption><font size="6"><b>KG 쇼핑몰 후기</b></font></caption>
		<tr>
		 <th class="td">글번호</th> <th class="td">아이디</th>  <th class="td">제목</th> <th class="td">작성일</th>
		</tr>
		
		<tr>
			<td class="td" ></td><td class="td" >aaa</td>  <td class="td"><a href="">안녕</a></td><td class="td" ></td>
		</tr>
	
		<tr>
			<td colspan="4" class="td" align="right"> <input type="button" value="글작성" onclick="location.href='write_view.jsp'" style="height: 70px;"> </td>
			
		</tr>
	</table>
</div>


</body>
</html>
























