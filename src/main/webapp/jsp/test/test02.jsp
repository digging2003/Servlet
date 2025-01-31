<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bmi</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
	
	<% 
		int cm = Integer.parseInt(request.getParameter("cm"));
		int kg = Integer.parseInt(request.getParameter("kg"));
		
		double BMI = kg / ((cm / 100.0) * (cm / 100.0));
		String answer = "";
		if(BMI < 18.5) {
			answer = "저체중";
		} else if (BMI < 25) {
			answer = "정상";
		} else if (BMI < 30) {
		 	answer = "과체중";
		} else if (BMI >= 30) {
			answer = "비만";
		}

	%>
	
	<h1>BMI 측정 결과</h1>
	<div class="display-4">당신은 <span class="text-info"><%= answer %></span>  입니다.</div>
	<div>BMI 수치 : <%= BMI %></div>

</body>
</html>