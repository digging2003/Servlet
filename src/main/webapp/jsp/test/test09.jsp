<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IPTV 채널 목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>

<%

	String category = request.getParameter("category");


    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
    
    
%>

	<div class="container">
		<header class="d-flex justify-content-center">
			<h1 class="text-danger my-4">Sk broadband IPTV</h1>
		</header>
		<nav>
			<ul class="nav nav-fill bg-danger">
				<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/test09.jsp">전체</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/test09.jsp?category=지상파">지상파</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/test09.jsp?category=드라마">드라마</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/test09.jsp?category=예능">예능</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/test09.jsp?category=영화">영화</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/test09.jsp?category=스포츠">스포츠</a></li>
			</ul>
		</nav>
		<body>
			<table class="table text-center">
				<thead>
					<tr>
						<th>채널</td>
						<th>채널명</td>
						<th>카테고리</td>
					</tr>
				</thead>
				<tbody>
				<% for(Map<String, String> i : list) {
						if(i.get("category").equals(category) || category == null) {
						%>
					<tr>
						<td><%= i.get("ch") %></td>
						<td><%= i.get("name") %></td>
						<td><%= i.get("category") %></td>
					</tr>
				<% 		}
					} %>
				</tbody>
			</table>
		</body>
		
		<footer class="d-flex justify-content-center">
			<div class="small">Copyright 2021. marondal All Rights Reserved.</div>
		</footer>
	</div>


</body>
</html>