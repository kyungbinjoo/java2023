<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!-- list.jsp -->
<html>
<head>
	<title>도서목록</title>
</head>
<body>
	<div align="center">
		<hr color="green" width="300">
		<h2>도 서 목 록 보 기</h2>
		<hr color="yellow" width="300">
		<table border="5" width="500">
			<tr>
				<th>제목</th>
				<th>작가</th>
				<th>도서번호</th>
				<th>등록일</th>
				<th>장르</th>
				<th>상세</th>
			</tr>
			
		<c:if test="${empty listBook}">
			<tr>
				<td colspan="3">등록된 책이 없습니다.</td>
			</tr>
		</c:if>			
		<c:forEach var="dto" items="${listBook}">
			<tr>
				<td>${dto.title}</td>
				<td>${dto.writer}</td>
				<td>${dto.no}</td>
				<th>${dto.register_date}</th>
				<th>${dto.category}</th>
				<th>수정<a href=delete_book.do>삭제</a></th>
			</tr>		
		</c:forEach>		
		</table>
	</div>
</body>
</html>




