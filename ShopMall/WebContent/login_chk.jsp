<%@page import="member.DTO.MemberDTO"%>
<%@page import="member.DAO.MemberDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dao" class="member.DAO.MemberDAO"></jsp:useBean>
    <jsp:useBean id="dto" class="member.DTO.MemberDTO"></jsp:useBean>
    <jsp:setProperty property="*" name="dto"/>
    
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	

	
	int result = dao.loginChk(id, pw); // 로그인 유효성 검증 메서드.
	
	//아이디가 없으면 스크립트로 경고창 출력 후 뒤로가기 진행.
	//비밀번호가 틀린 경우 비밀번호가 틀렸다고 경고창 출력 후 뒤로가기.
	//로그인 성공인 경우 user_mypage.jsp로 이동.
	
	if(result == -1) { %>
	
	<script>
		alert("아이디가 존재하지 않습니다.");
		history.back();
	</script>
	<% } else if(result == 0) { %>
	<script>
		alert("비밀번호가 틀렸습니다.");
		history.back();
	</script>
	<% } else { //로그인 성공. 
		
		//모든 회원정보를  DB에서 얻어와서, 세션에 user_name이란 이름으로 name을 저장 
		//user_id라는 이름으로 id를 저장.
		%>
		<script>
		alert("로그인 성공!!");
		</script>
		<%
		session.setAttribute("id",id);
		String name = dto.getName(); //VO에서 이름을 얻음.
		response.sendRedirect("Home.jsp");
	}



	%>




