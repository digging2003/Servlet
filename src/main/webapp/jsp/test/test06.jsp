<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장보기 목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
		
		<table class="table align-middle">
			<thead>
				<tr>
					<th class="text-center">번호</td>
					<th class="text-center">품목</td>
				</tr>
			</thead>
			<tbody>
			<% for(int i = 0; i < goodsList.size(); i++) { %>
				<tr>
					<td class="text-center"><%= i + 1 %></td>
					<td class="text-center"><%= goodsList.get(i) %></td>
				</tr>
			<% } %>
			</tbody>
		</table>
		
	</div>

</body>
</html>