<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>

	<%
		Date date = new Date();
	
		SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy년 M월 d일");
		SimpleDateFormat timeFormatter = new SimpleDateFormat("H시 m분 s초");
		
		String dateString = "오늘 날짜 " + dateFormatter.format(date);
		String timeString = "현재 시간 " + timeFormatter.format(date);
		
		// 어떤 정보를 보고 싶은지 전달 받는다.
		// 시간을 보여줄지, 날자를 보여줄지
		String what = request.getParameter("what");
		
		String result = null;
		if(what.equals("date")) {
			result = dateString;
		} else {
			result = timeString;
		}
		

	%>
	
	<div class="container">
		
		<div class="display-3"><%= result %></div>
	
	</div>
	
	
	
</body>
</html>