<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

    
    <body>

	<h2>회원가입</h2>
	
	<form action="regist_member.do" method="post">
		아이디:<input type="text" name="id"><br/>
		이름:<input type="text" name="name"><br/>
		비밀번호:<input type="password" name="password"><br/>
		이메일:<input type="text" name="email"><br/>
		휴대폰:<input type="text" name="hp1" size="5">-
		<input type="text" name="hp2" size="5">-
		<input type="text" name="hp3" size="5"><br/>
		<input type="submit" value="가입">
		
	</form>

</body>