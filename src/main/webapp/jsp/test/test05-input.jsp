<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>

	<div class="container">
	
		<h1>길이 변환</h1>
		
		<form method="post" action="/jsp/test/test05.jsp">
			<div class="d-flex align-items-end">
				<input type="text" class="form-control col-2" name="cm"><label> cm</label>
			</div>
			
			<div>
				<label for="in">인치 </label><input type="checkbox" id="in" name="length" value="in">
				<label for="in">야드 </label><input type="checkbox" id="yd" name="length" value="yd">
				<label for="in">피트 </label><input type="checkbox" id="ft" name="length" value="ft">
				<label for="in">미터 </label><input type="checkbox" id="m" name="length" value="m">
			</div>
			
			<button type="submit" class="btn btn-success">변환</button>
		</form>
		
	</div>

	

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4I2p+R3u8o7h3VZo6xZdV2ANFFarTtqA8O+o6n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-q8i4mM11Z3Aq2pl3X2OB3R6czEer5eH9UQm5F8RxzVt71SH1A5cgk+Hv2ysY2xw0" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0d7J2wBFFXf3t4gxfJbVrC5ENm0EzdJl6V6ZHyvBPC9s3QsA" crossorigin="anonymous"></script>

</body>
</html>