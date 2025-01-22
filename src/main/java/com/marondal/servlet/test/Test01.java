package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		오늘 날짜 출력
//		오늘 날짜를 아래와 같이 출력하세요.
//		web.xml URL Mapping 후 servlet을 이용해서 출력하세요.
//		Content Type은 text/plain으로 설정하세요.
//		출력 예시
//
//		오늘의 날짜는 2021년 5월 20일
		
		// Response Header
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		// Response Body
		PrintWriter out = response.getWriter();
		Date date = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("오늘의 날짜는 yyyy년 M월 d일");
		
		String dateTimeString = formatter.format(date);
		
		out.println(dateTimeString);
		
	}
}
