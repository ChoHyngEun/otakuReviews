package com.portfolio.product.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.portfolio.product.model.Product;

//Dao for Product
public class ProductDAO {
	//passing product object
	public int registerProduct(Product product) throws ClassNotFoundException{
		//테이블에 product 등록하는 SQL statement
		String insert_product = "insert into product" + "(product_name, product_brand, product_price, product_review) values "
		+ "(?,?,?,?);";
	
		int result;
		result = 0;
		
		//mysql connector 버전에 따라 ..mysql.jdbc.. 를 사용해야 할 수 있음.
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		//connect to mySQL using jdbc url
		try (Connection connection = DriverManager //"root"@"localhost"
				.getConnection("jdbc:mysql://localhost:3306/portfolio?useSSL=false", "root", "Tkfkdgo450.");
				
					//PreparedStatement 선언
					PreparedStatement preparedStatement = connection.prepareStatement(insert_product)){
					//id 제외 (id는 auto_increment)
					preparedStatement.setString(1, product.getProduct_name());
					preparedStatement.setString(2, product.getProduct_brand());
					preparedStatement.setFloat(3, product.getProduct_price());
					preparedStatement.setString(4,  product.getProduct_review());
					//see statement
					System.out.println(preparedStatement);
					//query execute
					result = preparedStatement.executeUpdate();
					
		} catch(SQLException e) {
		
			e.printStackTrace();
		
		}
		
		return result;
		
	}
}
