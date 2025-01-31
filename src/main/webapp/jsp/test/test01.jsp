<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		int[] scores = {80, 90, 100, 95, 80}; 
		
		int total = 0;
		for(int number:scores) {
			total += number;
		}
		
		float average = total / scores.length;
	%>
	
	<h1>점수 평균은 <%= average %> 입니다.</h1>
	
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		int totalScore = 0;
		for(String score:scoreList){
			if(score.equals("O")) {
				totalScore += 10;
			}
		}
	%>
	
	<h1>채점 결과는 <%= totalScore %>점 입니다.</h1>
	
	<%!
		
		public int sum(int number1, int number2) {
			int sum = 0;
			for(int i = number1; i <= number2; i++) {
				sum += i;
			}
			return sum;
		}
	
	
	%>
	
	<h1>1에서 50까지의 합은 <%= sum(1, 50) %></h1>
	
	<%
		String birthDay = "20010820";
		int age = 2025 - Integer.parseInt(birthDay.substring(0, 4)) + 1;
	%>
	
	<h1><%= birthDay %>의 나이는 <%= age %>살 입니다.</h1>
	

</body>
</html>