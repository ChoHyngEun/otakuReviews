package com.portfolio.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import com.portfolio.login.dao.LoginDAO;
//import com.portfolio.login.model.UserLogin;
import com.portfolio.registration.model.User;
/*
 * 성공적인 로그인시 웰컴페이지로 이동
 * 로그인 실패시 다시 로그인 페이지로 이동
 * 
 * */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//LoginDAO object 생성
	private LoginDAO loginDAO;
	
	public void init() {
		loginDAO = new LoginDAO();
	}
	
	//POST방식 사용시.
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// validation.. 로그인정보 비교를 위한 객체 생성
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		User user = new User();
		user.setUserName(userName);
		user.setPassword(password);

		try {
			if(loginDAO.validate(user)) {
				//validate 성공시 welcome.jsp로 이동
				response.sendRedirect("welcome.jsp");
			}else {
				PrintWriter out = response.getWriter();
//				HttpSession session = request.getSession();
				
				//alert 띄우기
				out.println("<script type=\"text/javascript\">");
				out.println("alert('invalid login attempt: no match');");
				//login.jsp 재진입
				out.println("location='login.jsp';");
				out.println("</script>");
				
				//response.sendRedirect("login.jsp");
			}
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}

}
