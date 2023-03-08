package com.portfolio.registration.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portfolio.registration.dao.UserDAO;
import com.portfolio.registration.model.User;

@WebServlet("/register")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private UserDAO userdao = new UserDAO();
    
    public UserServlet() {
        super();
    }

    //Get 사용시
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//forwarding을 위한 dispatcher (1/2)
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/ui/userRegistration.jsp");
		dispatcher.forward(request, response);
	}

	//Post 사용시
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//request parameters
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		User user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setUserName(userName);
		user.setPassword(password);
		user.setAddress(address);
		user.setEmail(email);
		user.setPhone(phone);
		
		try {
			userdao.registerUser(user);
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		//userRegistration.jsp using method post.. 그래서 dispatcher 여기에 추가
		//when doPost (submit), page will redirect to userInfo.jsp
		//(2/2)
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/ui/userInfo.jsp");
		dispatcher.forward(request, response);
		//redirect to where? 일단 보류
//		response.sendRedirect("");
		
	}

}
