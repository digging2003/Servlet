package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test09 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		out.println(""
				+ "<html>\n"
				+ "		<head><title>입사 지원</title></head>\n"
				+ "		<body>\n"
				+ "			<h1>" + name + "님 지원이 완료되었습니다.</h1>\n"
				+ "  		<hr>\n"
				+ "			<div>지원 내용</div>\n"
				+ "			<div>" + introduce + "</div>\n"
				+ "		</body>"
				+ "</html>");
		
	}

}
