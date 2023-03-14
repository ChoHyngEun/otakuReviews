package com.portfolio.userpage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.portfolio.login.model.UserLogin;
import com.portfolio.product.dao.ProductDAO;
import com.portfolio.product.model.Product;
import com.portfolio.registration.dao.UserDAO;
import com.portfolio.registration.model.User;

//AdminServlet은 서블릿으로만 구현하였음
//관리자페이지임 admin 정보로 로그인하였을때 자동 redirect 됨
//LoginServlet에서 admin 로그인관련 추가 및 수정 (완)
//edit 링크를 통해 forAdmin.jsp 페이지로 이동

@WebServlet("/dXireRpIIlQxXiA_3lIo7")
public class AdminServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

    public AdminServlet() {
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		//ProductDAO의 listProducts 메소드 사용 위함
		ProductDAO productDAO = new ProductDAO();
		List<Product> list = productDAO.listProducts();
		
		out.print("<!DOCTYPE html>\r\n"
				+ "<html lang=\"en\">\r\n"
				+ "<head>\r\n"
				+ "  <title>AdminServlet</title>\r\n"
				+ "  <meta charset=\"utf-8\">\r\n"
				+ "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n"
				+ "  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\r\n"
				+ "</head>");
		
		out.print("<body>");
		out.print("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>");
		out.print("<div align=center>");
		out.print("<a href='forAdmin.jsp'><h2>Edit</h2></a>");
		out.print("<h1>Admin Page</h1>");
		out.print("</div>");
		
		out.print("<h3>All Reviews</h3>");
		
		out.println("<table class='table table-dark table-hover'>");
		out.println("<thead color=red><tr><th scope='col'>id</th><th scope='col'>name</th><th scope='col'>brand</th><th scope='col'>price</th><th scope='col'>review</th></tr></thead>");
		out.print("<tbody>");
		for(int i=0;i<list.size();i++) {
			Product product = list.get(i);
			int id = product.getProduct_id();
			String name = product.getProduct_name();
			String brand = product.getProduct_brand();
			float price = product.getProduct_price();
			String review = product.getProduct_review();
			out.print("<tr><td>"+id+"</td><td>"+name+"</td><td>"+brand+"</td><td>"+price+"</td><td>"+review+"</td></tr>");
		}
		out.println("</tbody>");
		out.print("</table><br><hr><br>");
		//ProductDAO의 listProducts 부분 끝
		
		///////////////////////////////////////////////////////////////
		
		//UserDAO의 userInfoList 메소드 사용 위함
		UserDAO userDAO = new UserDAO();
		List<User> list2 = userDAO.userInfoList();		

		out.print("<h3>All Users</h3>");
		out.print("<table class='table table-dark table-hover'>");
		out.print("<thead><tr><th scope='col'>first name</th><th scope='col'>last name</th><th scope='col'>user ID</th><th scope='col'>email</th><th scope='col'>address</th><th scope='col'>phone</th></tr></thead>");
		out.print("<tbody>");
		
		for(int i=0;i<list2.size();i++) {
			User user= list2.get(i);
			String fname = user.getFirstName();
			String lname = user.getLastName();
			String username = user.getUserName();
			String email = user.getEmail();
			String address = user.getAddress();
			String phone = user.getPhone();
			out.print("<tr><td>"+fname+"</td><td>"+lname+"</td><td>"+username+"</td><td>"+email+"</td><td>"+address+"</td><td>"+phone+"</td></tr>");
		}
		out.println("</tbody>");
		out.print("</table></body></html>");
		//UserDAO의 userInfoList 부분 끝
		
	}
	
}
