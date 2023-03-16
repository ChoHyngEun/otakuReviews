package com.portfolio.product.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.portfolio.product.model.Product;

//Dao for Product
public class ProductDAO {
	//passing product object
	public int registerProduct(Product product) throws ClassNotFoundException{
		
		//테이블에 product 등록하는 SQL statement
		String insert_product = "insert into product" + "(product_name, product_brand, product_price, star, product_review, userName) values "
		+ "(?,?,?,?,?,?);";
	
		int result;
		result = 0;
		
		//mysql connector 버전에 따라 ..mysql.jdbc.. 를 사용해야 할 수 있음.
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		//connect to mySQL using jdbc url.. 
		try (Connection connection = DriverManager //"root"@"localhost"
				.getConnection("jdbc:mysql://localhost:3306/portfolio?useSSL=false", "root", "Tkfkdgo450.");
				
					//PreparedStatement 선언
					PreparedStatement preparedStatement = connection.prepareStatement(insert_product)){
					//id 제외 (id는 auto_increment)
					preparedStatement.setString(1, product.getProduct_name());
					preparedStatement.setString(2, product.getProduct_brand());
					preparedStatement.setFloat(3, product.getProduct_price());
					preparedStatement.setInt(4, product.getStar());
					preparedStatement.setString(5,  product.getProduct_review());
					preparedStatement.setString(6, product.getUserName());
					
					//see statement
					System.out.println(preparedStatement);
					//query execute
					result = preparedStatement.executeUpdate();
					
		} catch(SQLException e) {
		
			e.printStackTrace();
		
		}
		
		return result;
		
	}
	
	private Statement stmt;
	private Connection con;
	
	//UserPageServlet에 사용될 listProducts method (리뷰 리스트 출력용)
	public List<Product> listProducts(){
		
		List<Product> list = new ArrayList<Product>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("드라이버 로딩 성공");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/portfolio?useSSL=false", "root", "Tkfkdgo450.");
			System.out.println("connected");
			stmt = con.createStatement();
			System.out.println("statement created");
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		try {

			String query = "select * from product";
			System.out.println(query);
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				
				int id = rs.getInt("product_id");
				String name = rs.getString("product_name");
				String brand = rs.getString("product_brand");
				float price = rs.getFloat("product_price");
				int star = rs.getInt("star");
				String review = rs.getString("product_review");
				String userName = rs.getString("userName");
				
				
				
				Product product = new Product();
				
				product.setProduct_id(id);
				product.setProduct_name(name);
				product.setProduct_brand(brand);
				product.setProduct_price(price);
				product.setStar(star);
				product.setProduct_review(review);
				product.setUserName(userName);
				
				list.add(product);
			
			}
			
			rs.close();
			stmt.close();
			con.close();
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
	
