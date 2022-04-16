<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>세션 삭제</title>
</head>
<body>
	Home > 세션 삭제
	<hr>
	<%
		String p_id = (String) session.getAttribute("UserId");
		String p_pw = (String) session.getAttribute("UserPw");
		
		
		long last_time = session.getLastAccessedTime();
		long start_time = session.getCreationTime();
		long keping_time = (last_time - start_time) / 60000;
		
		if(keping_time == 30)	//세션 생성 시간이 30분이 지나면 세션 종료
		{
			session.invalidate();
		}
	%>

</body>
</html>