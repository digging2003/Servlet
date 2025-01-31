<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 검색</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>

	<div class="container">
		<h2>메뉴검색</h2>
		<form method="post" action="/jsp/test/test07.jsp">
			<input type=text name="menuInput">
			<input type="checkbox" id="point" name="point"><label for="point">4점 이하 제외</label><br>
			<button type="submit" class="btn btn-success">검색</button>
		</form>
	</div>

</body>
</html>