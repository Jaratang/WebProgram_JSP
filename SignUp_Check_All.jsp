<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>모든 세션 정보</title>
	</head>
	<body>
		Home > 모든 세션 정보 확인하기
		<hr>
		<%
			String p_id = "";
			String p_pw = "";
			
			Enumeration en = session.getAttributeNames();
			
			int count=0;
			while(en.hasMoreElements())
			{
				count++;
				p_id = en.nextElement().toString();
				p_pw = session.getAttribute(p_id).toString();
				
				out.println(count + ". 세션의 속성 이름 : {" + p_id + "} <br>");
				out.println(count + ". 세션의 속성값 : {" + p_pw + "} <br>");
			}
		%>
</body>
</html>