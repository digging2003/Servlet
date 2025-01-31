<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>

<%
	int cm = Integer.parseInt(request.getParameter("cm"));
	String[] lengthArray = request.getParameterValues("length");
	
	double in = cm * 2.54;
	double yd = cm * 91.44;
	double ft = cm * 30.48;
	double m = cm * 0.01;
	
	String result = "";
	
	for(String length:lengthArray){
		if(length.equals("in")){
			result += in + " in<br>";
		} else if(length.equals("yd")){
			result += yd + " yd<br>";
		} else if(length.equals("ft")){
			result += ft + " ft<br>";
		} else if(length.equals("m")){
			result += m + " m<br>";
		}
	}

%>

	<div class="container">
		<h2>변환 결과</h2>
		<h4><%= cm %>cm</h4>
		<hr>
		<h4>
			<%= result %>
		</h4>
	
	</div>



	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4I2p+R3u8o7h3VZo6xZdV2ANFFarTtqA8O+o6n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-q8i4mM11Z3Aq2pl3X2OB3R6czEer5eH9UQm5F8RxzVt71SH1A5cgk+Hv2ysY2xw0" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0d7J2wBFFXf3t4gxfJbVrC5ENm0EzdJl6V6ZHyvBPC9s3QsA" crossorigin="anonymous"></script>
	
</body>
</html>