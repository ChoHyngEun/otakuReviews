package com.portfolio.registration.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.portfolio.registration.model.User;

//Dao for User
public class UserDAO {
	//passing user object
	public int registerUser(User user) throws ClassNotFoundException{
		//테이블에 유저 등록 SQL statement 추가. id 는 제외 (auto_increment 사용)
		String insert_user = "insert into user" + "(first_name, last_name, username, password, address, email, phone) values "
		+ "(?,?,?,?,?,?,?);";
	
		int result;
		result = 0;
		
		//mysql connector 버전에 따라 ..mysql.jdbc.. 를 사용해야 할 수 있음.
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		//connect to mySQL using jdbc url
		try (Connection connection = DriverManager //"root"@"localhost"
				.getConnection("jdbc:mysql://localhost:3306/portfolio?useSSL=false", "root", "Tkfkdgo450.");
				
					//PreparedStatement 선언
					PreparedStatement preparedStatement = connection.prepareStatement(insert_user)){
					//id 제외
					preparedStatement.setString(1, user.getFirstName());
					preparedStatement.setString(2, user.getLastName());
					preparedStatement.setString(3, user.getUserName());
					preparedStatement.setString(4, user.getPassword());
					preparedStatement.setString(5, user.getAddress());
					preparedStatement.setString(6, user.getEmail());
					preparedStatement.setString(7, user.getPhone());
					
					System.out.println(preparedStatement);
					//query execute
					result = preparedStatement.executeUpdate();
					
		} catch(SQLException e) {
		
			e.printStackTrace();
		
		}
		
		return result;
		
	}
}
