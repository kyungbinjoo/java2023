<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>관리자 페이지</title>
</head>
<body>
<h2 align="center" >도서 등록</h2>
<form align="center" action="regist_book.do" method="post">
		제목:<input type="text" name="title"><br/>
		작가:<input type="text" name="writer"><br/>
		카테고리:<select name="category">
			<option value="인문">인문</option>
			<option value="과학">과학</option>
			<option value="예술">예술</option>
			<option value="교육">교육</option>
			<option value="만화">만화</option>
		</select>
		<input type="submit" value="등록"> 
		수정, 
		삭제
		
	</form>
<div align="center">
		<hr color="green" width="300">
		<h2>회 원 목 록 보 기</h2>
		<hr color="green" width="300">
		<table border="1" width="500">
			<tr>
				<th>회원번호</th>
				<th>이름</th>
				<th>아이디</th>
				<th>이메일</th>
				<th>휴대폰</th>
				<th>가입일자</th>
			</tr>
			
		<c:if test="${empty listMember}">
			<tr>
				<td colspan="3">등록된 회원이 없습니다.</td>
			</tr>
		</c:if>			
		<c:forEach var="dto" items="${listMember}">
			<tr>
				<td>${dto.no}</td>
				<td>${dto.name}</td>
				<td>${dto.id}</td>
				<th>${dto.email }</th>
				<th>${dto.hp1 }-${dto.hp2 }-${dto.hp3 }</th>
				<th>${dto.joindate }</th>
			</tr>		
		</c:forEach>		
		</table>
	</div> 
-도서대여회원보기
-미반납회원보기
</body>
</html>