<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 검색 결과</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%

	String menuInput = request.getParameter("menuInput");
	String point = request.getParameter("point");

	List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	list.add(map);
	
	
	
	List<Map<String, Object>> resultList = new ArrayList<>();
	
	for(Map<String, Object> review : list){
		if(review.get("menu").equals(menuInput)){
			if(point != null){
				double doublePoint = Double.parseDouble((review.get("point").toString()));
				if(doublePoint > 4){
					resultList.add(review);
				}
			} else {
				resultList.add(review);
			}
		}
	}
	
%>
	<div class="container">
		<div class="d-flex justify-content-center">
			<h1>검색 결과</h1>
		</div>
		
		<table class="table align-middle">
			<thead>
				<tr>
					<th class="text-center">메뉴</td>
					<th class="text-center">상호</td>
					<th class="text-center">별점</td>
				</tr>
			</thead>
			<tbody>
				
				<% for(Map<String, Object> mapi : resultList) { %>
				<tr>
					<td class="text-center"><%= mapi.get("menu") %></td>
					<td class="text-center"><%= mapi.get("name") %></td>
					<td class="text-center"><%= mapi.get("point") %></td>
				</tr>
				<% } %>
				
			</tbody>
		</table>
		
	</div>
</body>
</html>