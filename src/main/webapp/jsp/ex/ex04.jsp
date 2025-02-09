<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자료구조 다루기</title>
</head>
<body>

<%
	// 과일이름 리스트
	List<String> fruitList = new ArrayList<>();
	fruitList.add("사과");
	fruitList.add("바나나");
	fruitList.add("딸기");
%>
	<table border="1">
		<% for(String fruit:fruitList) { %>
		<tr>
			<td><%= fruit %></td>
		</tr>
		<% } %>
	</table>
	
<%
	List<Map<String, Integer>> scoreList = new ArrayList<>();

	Map<String, Integer> score1 = new HashMap<>();
	score1.put("국어", 90);
	score1.put("수학", 95);
	score1.put("영어", 80);
	
	scoreList.add(score1);
	
	Map<String, Integer> score2 = new HashMap<>();
	score2.put("국어", 100);
	score2.put("수학", 90);
	score2.put("영어", 70);
	
	scoreList.add(score2);
	
	
%>

	<table border="1">
		<thead>
			<tr>
				<td>국어</td>
				<td>수학</td>
				<td>영어</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>80</td>
				<td>90</td>
				<td>75</td>
			</tr>
			
			<tr>
				<td>50</td>
				<td>60</td>
				<td>40</td>
			</tr>
		</tbody>
	</table>

</body>
</html>