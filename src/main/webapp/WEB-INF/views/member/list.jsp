<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!-- list.jsp -->
<html>
<head>
	<title>회원목록</title>
</head>
<body>
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
</body>
</html>




