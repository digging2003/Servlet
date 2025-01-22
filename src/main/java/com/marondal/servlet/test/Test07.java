package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String price = request.getParameter("price");
		
		out.println(""
				+ "<html>\n"
				+ "		<head><title>주문 완료</title></head>\n"
				+ "		<body>\n"
				+ "			<h4>" + address + " 배달 준비중</h4>\n"
				+ "			<hr>\n"
				+ "			<p>결제금액: " + price + "원</p>\n"
				+ "		</body>\n"
				+ "</html>");
	}
}