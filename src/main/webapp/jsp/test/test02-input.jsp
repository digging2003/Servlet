<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>

	<!-- BMI 수치
키와 몸무게를 입력 받아서 BMI 수치를 계산하고 비만도를 표시하는 기능을 만드세요.
키와 몸무게를 input으로 입력 받고 전달하는 form을 만들고 Get method 로 submit 하세요.
	 -->
	 
	 <h1>체격 조건 입력</h1>
	 <form method="get" action="/jsp/test/test02.jsp">
		 <input type="text" name="cm"><label>cm</label>
		 <input type="text" name="kg"><label>kg</label>
		 <button type="submit">계산</button>
	 </form>

</body>
</html>