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

</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>

<div style="width:80%; margin: 0 auto; text-align: center;">
<img src="${param.img}" style="width: 500px; height: 700px;"><br>
<h4>${param.name }</h4><br>
<font style="color: skyblue;">${param.price }</font><p>
<!--  <input type="submit" value="구매" style="width: 100px; height: 70px;">-->
</div>
</body>
</html>