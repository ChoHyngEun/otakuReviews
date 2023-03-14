package com.portfolio.product.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portfolio.product.dao.ProductDAO;
import com.portfolio.product.model.Product;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private ProductDAO productdao = new ProductDAO();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		//parameters 요청
		String product_name = request.getParameter("product_name");
		String product_brand = request.getParameter("product_brand");
		float product_price = Float.parseFloat(request.getParameter("product_price"));
		String product_review = request.getParameter("product_review");

		//새 Product 객체에 위 정보 저장
		Product product = new Product();
		product.setProduct_name(product_name);
		product.setProduct_brand(product_brand);
		product.setProduct_price(product_price);
		product.setProduct_review(product_review);
		
		//위 product 정보를 ProductDAO의 registerProduct 메소드를 사용해 sql에 정보 연동
		try {
			productdao.registerProduct(product);
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}

		//for alert
		PrintWriter out = response.getWriter();
		//alert 띄우기
		out.println("<script type=\"text/javascript\">");
		out.println("alert('review registration successful')");
		//review.jsp로 이동
		out.println("location='productInfo.jsp';");
		out.println("</script>");

//		review.jsp로 포워딩
//		RequestDispatcher dispatcher = request.getRequestDispatcher("review.jsp");
//		dispatcher.forward(request, response);
		
		//redirect to where? 일단 보류
//		response.sendRedirect("");
		
	}
}