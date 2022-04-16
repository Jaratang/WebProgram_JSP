<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 검사/세션 생성</title>
	</head>
	<body>
		Home > 로그인 확인 & 세션 생성
		<hr>
		<%
			String p_id = request.getParameter("p_id");
			String p_pw = request.getParameter("p_pw");
			
			if(p_id.equals("test1") && p_pw.equals("12345"))
			{
				session.setAttribute("UserId", p_id);
				session.setAttribute("UserPw", p_pw);
				
				out.println("[" + p_id + "]님이 입장하였습니다.");
			}
			else
			{
				out.println("세션 생성 실패! <br>");
				out.println("재시도바랍니다.");
			}
		%>
</body>
</html>