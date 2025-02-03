<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱 사이트</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
.container {
	width : 1200px;
}
article{
	height : 230px;
}
.table {
	width : 70px;
}
</style>
</head>
<body>
<%
// 아티스트 정보 


    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
    Map<String, Object> searchMusic = new HashMap<>();
    

	String title = request.getParameter("title"); 
	String id = request.getParameter("id");
    
    for(Map<String, Object> i : musicList) {
    	if(title != null && i.get("title").equals(title)){
    		searchMusic = i;
    	} else if (i.get("id").toString().equals(id)) {
    		searchMusic = i;
    	}
    }
    
    int total = Integer.parseInt(searchMusic.get("time").toString());
    int m = total / 60;
    int s = total % 60;
%>
	
	<div class="container">
		<header class="m-3">
			<div class="d-flex">
				<div class="d-flex justify-content-start col-2">
					<h2 class="text-success">Melong</h2>
				</div>
				
				<form class="input-group w-50" method="post" action="/jsp/test/test10.jsp">
					<input type="text" class="form-control" name="title">
					<button type="submit" class="btn btn-info text-white">검색</button>
				</form>
			</div>
		
			<nav>
				<ul class="nav mt-3">
					<li class="nav-item"><a class="nav-link text-dark fw-bold" href="#">멜롱챠트</a></li>
					<li class="nav-item"><a class="nav-link text-dark fw-bold" href="#">최신음악</a></li>
					<li class="nav-item"><a class="nav-link text-dark fw-bold" href="#">장르음악</a></li>
					<li class="nav-item"><a class="nav-link text-dark fw-bold" href="#">멜롱DJ</a></li>
					<li class="nav-item"><a class="nav-link text-dark fw-bold" href="#">뮤직어워드</a></li>
				</ul>
			</nav>
		</header>
		
		<main>
			<div class="mt-4">
				<h3>곡 정보</h3>
			</div>
			
			<article class="border border-success d-flex">
				<div class="d-flex align-items-center mx-3">
					<img width="200" src="<%= searchMusic.get("thumbnail") %>">
				</div>
				<div class="m-2">
					<div class="display-5 mt-2"><%= searchMusic.get("title") %></div>
					<div class="text-success fw-bold my-2"><%= searchMusic.get("singer") %></div>
					<table class="small text-secondary">
						<tr>
							<td class="table text-secondary">앨범</td>
							<td><%= searchMusic.get("album") %></td>
						</tr>
						<tr>
							<td>재생시간</td>
							<td><%= m %> : <%= s %></td>
						</tr>
						<tr>
							<td>작곡가</td>
							<td><%= searchMusic.get("composer") %></td>
						</tr>
						<tr>
							<td>작사가</td>
							<td><%= searchMusic.get("lyricist") %></td>
						</tr>
					</table>
				</div>
			</article>
			
			<div class="mt-4">
				<h4>가사</h4>
				<hr>
				<div class="mb-5">가사 정보 없음</div>
				<hr>
			</div>
			
			
		
		</main>

		<footer>
		
			<div class="text-secondary small">Copyright 2021. melong All Rights Reserved.</div>
		</footer>
	</div>

</body>
</html>