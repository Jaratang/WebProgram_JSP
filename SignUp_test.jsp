<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	Home > Sign Up
	<hr>
	<from action="from_SignUP_test2.jsp" name="person_info" method="get">
		<fieldset style="width:330px">	//창 가로길이 330픽셀
			<legend> 개인 정보 입력</legend><p> //페이지 내부에 박스창(?)생성
			
			ID(아이디) <br>
			<input type="text" name="p_id" size="16"> &nbsp;
			<input type="submit" value="중복확인"><p>
			
			PASSWORD(비밀번호) <br>
			<input type="password" name="p_pw" size="16"><p>
			
			NAME(이름)<br> 
			<input type="text" name="p_name" size="16"><p>
			
			Phone Number(전화번호)<br>
			<select name="choice" style="width:60px;height:20.5px">
				<option value="choice">선택</option>
				<option value="KT">KT</option>
				<option value="SKT">SKT</option>
				<option value="LGU+">LGU+</option>
			</select>
			<input type="text" maxlength="3" size="3" name="phone1">
			<input type="text" maxlength="4" size="4" name="phone2">
			<input type="text" maxlength="4" size="4" name="phone3"><p>
			
			Gender(성별)<br>
			<input type="radio" name="gender" value="Male">남
			<input type="radio" name="gender" value="Female">여<p>
			
			Interest type(관심장르)<br>
			<input type="checkbox" name="genre" value="2D">2D &nbsp;  &nbsp;
			<input type="checkbox" name="genre" value="3D">3D <br>
			<input type="checkbox" name="genre" value="RPG">RPG &nbsp;  &nbsp;
			<input type="checkbox" name="genre" value="FPS">FPS <br>
			<input type="checkbox" name="genre" value="Action">액션 &nbsp;  &nbsp;
			<input type="checkbox" name="genre" value="Rhythm">리듬 <p>
			
			Introduce(자기소개)<br>
			<textarea name="Introduction" cols="70" row="5"></textarea>
			<hr> //가로선
			
		<div align="center">
			<input type="submit" value="작성완료"> &nbsp;  &nbsp;
			<input type="submit" value="재작성">
		</div><br>
		</fieldset>
	</from>
</body>
</html>