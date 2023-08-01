<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!doctype html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

<head>
	<title>도서 검색 시스템</title>
</head>
<%@ include file="top.jsp" %>
<body align="center">
<table>
<h2><span class="badge text-bg-warning"><a href="list_member.do">회원목록</a></span></h2>
<h2><span class="badge text-bg-warning"><a href="regist_member.do">회원가입</a></span></h2>
<h2><span class="badge text-bg-warning"><a href="search_book.do">도서검색</a></span></h2>
<h2><span class="badge text-bg-warning"><a href="list_book.do">도서목록</a></span></h2>
</table>

	
	<br/><br/>
	
	<li>
	<form action="login_member.do" method="post">
    <div id="text">
        <input type="text" id="id" maxlength="9" placeholder="Username">
       
    </div>
    <div id="text">
        <input type="password" id="password" maxlength="9" placeholder="Password">
       
        
    </div>
    <div>
        <input type="submit" value="로그인">
    </div>
    
    </form>
    </li>
	
</ul>

</body>

<%@ include file="bottom.jsp" %>
