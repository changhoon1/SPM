<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="check" class="member.DAO.MemberDAO"/>
<jsp:useBean id="dto" class="member.DTO.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
int howRow = 0 ;
//userCheck 이전 메소드 활용
int result = check.idOverlapChk(dto.getId());
if(result == 0)
	howRow = check.insert(dto);
if(howRow == 1){
	out.print("<script>alert('회원가입을 축하합니다.');"
				+"location.href='login.jsp';</script>");
}else{
	out.print("<script>alert('문제가 발생하였습니다. 관리자에게 문의하세요.');"
			+"location.href='join.jsp';</script>");
}
%>
</body>

</html>