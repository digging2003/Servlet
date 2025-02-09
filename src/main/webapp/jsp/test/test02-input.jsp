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
	 <div class="container">
		 <h1>체격 조건 입력</h1>
		 <form method="get" action="/jsp/test/test02.jsp" class="d-flex align-items-end">
			 <input type="text" name="cm" class="form-control col-2"><label>cm</label>
			 <input type="text" name="kg" class="form-control col-2"><label>kg</label>
			 <button type="submit" class="btn btn-primary">계산</button>
		 </form>
	 </div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4I2p+R3u8o7h3VZo6xZdV2ANFFarTtqA8O+o6n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-q8i4mM11Z3Aq2pl3X2OB3R6czEer5eH9UQm5F8RxzVt71SH1A5cgk+Hv2ysY2xw0" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0d7J2wBFFXf3t4gxfJbVrC5ENm0EzdJl6V6ZHyvBPC9s3QsA" crossorigin="anonymous"></script>
</body>
</html>