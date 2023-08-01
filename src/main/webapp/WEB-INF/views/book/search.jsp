<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>도서 검색</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <body class="p-3 m-0 border-0 bd-example">

	<form action="search_book.do" method="get"> <%-- <c:if test="${condition eq 'titlename' }">selected</c:if>	 --%>
		<label for="listbook">검색조건</label>
		<select name="listbook" id="listbook">
			<option value="title" <c:if test="${listbook eq 'title' }">selected</c:if>>제목</option>
			<option value="writer" <c:if test="${listbook eq 'writer' }">selected</c:if>>작성자</option>
		</select>
		<input type="text" name="keyword" id="keyword"
			placeholder="검색어 ..." value="${keyword }"/>
		<button type="submit">검색</button>
	</form><!-- condition이라는 파라미터 명으로 넘어간다. -->
</div><!-- container -->
	
  </body>
</html>