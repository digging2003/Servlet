<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장보기 목록</title>
</head>
<body>
<%
	List<String> goodsList = Arrays.asList(new String[]{ 
	    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
	});
%>
	<div class="container">
		<div class="d-flex justify-content-center">
			<h1>장 목록</h1>
		</div>
		
		<table >
			<thead>
				<th>번호</th>
				<th>품목</th>
			</thead>
			<tbody>
			
			</tbody>
		</table>
		
	</div>

</body>
</html>