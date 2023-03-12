package com.portfolio.review.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portfolio.product.dao.ProductDAO;
import com.portfolio.product.model.Product;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/list")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ListServlet() {
    	
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
		ProductDAO productDAO = new ProductDAO();
		List<Product> list = productDAO.listProducts();
		
		out.print("<html><body>");
		out.print("<table border=1><tr align='center' bgcolor='yellow'>");
		out.print("<td>id</td><td>name</td><td>brand</td><td>price</td><td>review</td>");
		
		for(int i=0;i<list.size();i++) {
			Product product = list.get(i);
			int id = product.getProduct_id();
			String name = product.getProduct_name();
			String brand = product.getProduct_brand();
			float price = product.getProduct_price();
			String review = product.getProduct_review();
			out.print("<tr><td>"+id+"</td><td>"+name+"</td><td>"+brand+"</td><td>"+price+"</td><td>"+review+"</td><td>");
		}
		out.print("</table></body></html>");
	}
	
	
	
}
