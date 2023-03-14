package com.portfolio.login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LogoutServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();

		//invalidating session을 위함
		request.getSession(false).invalidate();

		//alert 띄우기
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Bye!');");
		//index.jsp 재진입
		out.println("location='index.jsp';");
		out.println("</script>");
		
		out.close();
		
	}

}
