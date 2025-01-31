<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙 연산</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
	
	<div class="container">
		<h1>사칙 연산</h1>
		<form method="post" action="/jsp/test/test04.jsp" class="d-flex">
			<input type="text" name="number1" class="form-control col-2 mr-2">
			<select name="calculate" class="form-control col-1 mr-2">
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="X">X</option>
				<option value="/">/</option>
			</select>
			
			<input type="text" name="number2" class="form-control col-2 mr-2">
			<button type="submit" class="btn btn-success">계산</button>
		</form>
	
	
	</div>

</body>
</html>