package com.portfolio.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSession;

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
	private LoginDAO loginDAO = new LoginDAO();
	
	public LoginServlet() {
		super();
	}
	
	//POST방식 사용시.
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//content type이 text/html에 반응하도록 지정
		response.setContentType("text/html;charset=UTF-8");
		
		//for alert and more
		PrintWriter out = response.getWriter();
		//get session 객체
		HttpSession session = request.getSession(true);
		
		// validation.. 로그인정보 비교를 위한 객체 생성
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		session.setAttribute("userName", userName);
		User user = new User();
		user.setUserName(userName);
		user.setPassword(password);
		
		try {
			
			//validate 성공시
			if(loginDAO.validate(user)) {
				//로그인한 유저의 userName을 user에 세션 바인딩시킴
				session.setAttribute(userName, user);
				//로그인한 유저의 password를 password에 세션 바인딩시킴
				session.setAttribute(password, password);
				
				//로그인 유저가 admin일 경우
				if(userName.equals("admin")&&password.equals("Tkfkdgo450.")) {
					//admin을 관리자 페이지로 redirect
					response.sendRedirect("dXireRpIIlQxXiA_3lIo7?id="+userName);
				}else {
					
					//redirecting 시키면서 userName도 주소창에 표시
					response.sendRedirect("index.jsp?id="+userName);
				}
			//validate 실패시
			}else {
				//HttpSession session = request.getSession();
				
//				//alert 띄우기
//				out.println("<script type=\"text/javascript\">");
//				out.println("alert('invalid login attempt: no match');");
//				//login.jsp 재진입
//				out.println("location='login.jsp';");
//				out.println("</script>");
				
				RequestDispatcher goBack = request.getRequestDispatcher("login.jsp");
				out.println("<div align=center");
				out.println("<h1>invalid login attempt</h1>");
				out.println("</div>");
				goBack.include(request, response);
				//response.sendRedirect("login.jsp");
			}
			
			out.close();
			
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}

}
