<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산 결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
	
	<%
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		String calculate = request.getParameter("calculate");
		
		double result = 0;
		if(calculate.equals("+")){
			result = number1 + number2;
		} else if(calculate.equals("-")){
			result = number1 - number2;
		} else if(calculate.equals("*")){
			result = number1 * number2;
		} else {
			result = number1 / number2;
		}
	%>

	<div class="display-4">계산 결과</div>
	<div class="display-3"><%= number1 %> <%= calculate %> <%= number2 %> = <span class="text-info"><%= result %></span></div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4I2p+R3u8o7h3VZo6xZdV2ANFFarTtqA8O+o6n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-q8i4mM11Z3Aq2pl3X2OB3R6czEer5eH9UQm5F8RxzVt71SH1A5cgk+Hv2ysY2xw0" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0d7J2wBFFXf3t4gxfJbVrC5ENm0EzdJl6V6ZHyvBPC9s3QsA" crossorigin="anonymous"></script>
	
</body>
</html>