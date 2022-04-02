<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<script type="text/javascript">
		//function Check_Id() 추후 중복체크 기능 대입 
 		
		function Check_Test()	//작성완료 버튼을 누를 시 내용 검사
		{
			var f = document.person_info;
			var regExpName = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
			
			if(f.p_id.value=="")
			{
				alert("아이디를 입력해 주세요.");	//아이디 입력칸이 비어있으면 경고
				f.p_id.focus();
				return false;
			}
			else if(f.p_pw.value!=p_pw_2)
			{
				alert("비밀번호가 올바르지 않습니다.");	//비밀번호 확인결과 비밀번호와 일치하지 않으면 경고
				f.p_pw.focus();
				return false;
			}
			else if(f.p_name.value=="");
			{
				alert("이름을 입력하세요.");	//이름을 입력하지 않으면 경고
				f.p_name.focus();
				return false;
			}
			else if(!regExpName.test(f.p_name.value))
			{
				alert("한글로 이름을 입력하세요.");	//이름을 한글로 입력하지 않으면 경고
				f.p_name.focus();
				return false;
			}
			else return true;	//틀린 내용이 없을 시 서버로 내용 전송
		}
	</script>
</head>
<body>
	Home > Sign Up
	<hr>
	<from action="SignUP_ver1.jsp" name="person_info" 
		method="post" onsubmit="return Check_Test()"> //보안이 필요한 경우 get대신 post사용
		<fieldset style="width:330px">	//창 가로길이 330픽셀
			<legend> 개인 정보 입력</legend><p> //페이지 내부에 박스창(?)생성
			
			ID(아이디) <br>
			<input type="text" name="p_id" size="16"> &nbsp;
			<input type="submit" value="중복확인"><p>	//중복되는 ID가 없는지 확인
			
			PASSWORD(비밀번호) <br>
			<input type="password" name="p_pw" size="16"><p>
			
			PASSWORD_CHECK(비밀번호 확인) <br>
			<input type="password"  name="p_pw_2" size="16"><p>

			NAME(이름)<br> 
			<input type="text" name="p_name" size="16"><p>
			
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
			<input type="submit" value="작성완료">
		</div><br>
		</fieldset>
	</from>
</body>
</html>