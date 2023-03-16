package com.portfolio.registration.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.portfolio.registration.dao.UserDAO;
import com.portfolio.registration.model.User;

@WebServlet("/register")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private UserDAO userdao = new UserDAO();

    //Get 사용시
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		
//		//forwarding을 위한 dispatcher (1/2)
//		RequestDispatcher dispatcher = request.getRequestDispatcher("userRegistration.jsp");
//		dispatcher.forward(request, response);
//	}

	//Post 사용시
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Duplicate userName 체크
		try
		{
			
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/portfolio","root","Tkfkdgo450."); 
		Statement stmt = con.createStatement();
		
		response.setContentType("text/html;charset=UTF-8");
		
		//parameters 요청
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		//query
		String str = "select count(*) from user where username='"+userName+"'";
		
		ResultSet rs = stmt.executeQuery(str);
		//query string in-take 후 비교를 위한 저장
		rs.next();
		String count = rs.getString(1);
		//count가 없음. 즉, 중복되는 row가 없는 경우
		if(count.equals("0")){
			//새 User 객체에 위 정보 저장
			User user = new User();
			user.setFirstName(firstName);
			user.setLastName(lastName);
			user.setUserName(userName);
			user.setPassword(password);
			user.setAddress(address);
			user.setEmail(email);
			user.setPhone(phone);
			//새 User 객체 저장 후 회원가입 진행
			try {
				//User 정보를 UserDAO의 registerUser 메소드를 사용해 sql에 정보 연동
				userdao.registerUser(user);
				
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
		
		//userRegistration.jsp using method post.. 그래서 dispatcher 여기에 추가
		//when doPost (submit), page will redirect to userInfo.jsp
		//(2/2)
		RequestDispatcher dispatcher = request.getRequestDispatcher("userInfo.jsp");
		dispatcher.forward(request, response);
		//redirect to where? 일단 보류
//		response.sendRedirect("");
		
		//Duplicate userName 발견시 경고메세지 출력 후 다시 회원가입 페이지로 이동
		}else{
			PrintWriter p = response.getWriter();
			p.println("<script>alert('Username Already Taken!')");
			p.println("location.href='"+"userRegistration.jsp"+"'");
			p.println("</script>");
			p.close();
		}}
		catch (Exception e){
			e.printStackTrace();
		}
	}}
