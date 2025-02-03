<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 정보</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<%
	String id = request.getParameter("id");
	
	List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<String, Object>() {
	    { 
	        put("id", 1000);
	        put("title", "아몬드"); 
	        put("author", "손원평"); 
	        put("publisher", "창비");
	        put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791198363503.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1001);
	        put("title", "사피엔스"); 
	        put("author", "유발 하라리"); 
	        put("publisher", "김영사");
	        put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788934972464.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1002);
	        put("title", "코스모스"); 
	        put("author", "칼 세이건"); 
	        put("publisher", "사이언스북");
	        put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788983711892.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1003);
	        put("title", "나미야 잡화점의 기적"); 
	        put("author", "히가시노 게이고"); 
	        put("publisher", "현대문학");
	        put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/4808972756194.jpg");
	    } 
	};
	list.add(map);
	
	
	String title = "";
	String author = "";
	String publisher = "";
	String image = "";
	
	for(Map<String, Object> i : list){
		String idString = i.get("id") + "";
		if(idString.equals(id)){
			title = i.get("title") + "";
			author = i.get("author") + "";
			publisher = i.get("publisher") + "";
			image = i.get("image") + "";
			
		}
	}
	
	
%>

	<div class="container d-flex">
		<div>
			<img width=250 src=<%= image %>>
		</div>
		<div class="mx-2">
			<div class="display-2 fw-bold"><b><%= title %></b></div>
			<div class="display-4 text-info"><%= author %></div>
			<div class="display-5 text-secondary"><%= publisher %></div>
		</div>
	
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4I2p+R3u8o7h3VZo6xZdV2ANFFarTtqA8O+o6n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-q8i4mM11Z3Aq2pl3X2OB3R6czEer5eH9UQm5F8RxzVt71SH1A5cgk+Hv2ysY2xw0" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0d7J2wBFFXf3t4gxfJbVrC5ENm0EzdJl6V6ZHyvBPC9s3QsA" crossorigin="anonymous"></script>


</body>
</html>