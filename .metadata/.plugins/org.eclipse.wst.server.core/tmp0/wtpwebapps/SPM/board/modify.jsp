<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>

<jsp:useBean id="dao" class="board.DAO.BoardDAO"/>
<jsp:useBean id="dto" class="board.DTO.BoardDTO"/>
<jsp:setProperty property="*" name="dto"/><!-- 모든값 처리 dto에 저장 -->
${dao.modify(dto) } <!-- dao에 modify기능 호출 dto값 넣음 -->
<c:redirect url="list.jsp"/>

</body>
</html>