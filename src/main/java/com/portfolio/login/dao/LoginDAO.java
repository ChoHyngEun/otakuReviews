package com.portfolio.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//import com.portfolio.login.model.UserLogin; //login 테이블을 따로 만들었었으나, user 테이블로 통일시켰으므로 미사용
import com.portfolio.registration.model.User;

public class LoginDAO {
	
	//User.java 모델로부터 login information을 get하여 validate하기위함 //passing UserLogin parameters
	//MySQL 테이블중 Login 테이블 대신 User 테이블 (회원가입 데이터) 이용
	public boolean validate(User user) throws ClassNotFoundException{
		//false by default
		boolean checkStatus = false;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		//database 연결
		try (Connection connection = DriverManager
				.getConnection("jdbc:mysql://localhost:3306/portfolio?useSSL=false", "root", "root");
				
			//PreparedStatement 선언 및 query	//MySQL root의 user 테이블 사용
			PreparedStatement preparedStatement = connection
						.prepareStatement("select * from user where username = ? and password = ?")){
			preparedStatement.setString(1, user.getUserName());
			preparedStatement.setString(2, user.getPassword());
			
			//execute query 후 결과 확인
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			checkStatus = rs.next();
			
		} catch (SQLException e) {
			printSQLException(e);
		}
		
		return checkStatus;
		
	}		
	
	private void printSQLException(SQLException ex) {
		
		for(Throwable e: ex) {
			
			if(e instanceof SQLException) {
			
				e.printStackTrace(System.err);
				System.err.println("get SQL state: " + ((SQLException) e).getSQLState());
				System.err.println("error code: " + ((SQLException) e).getErrorCode());
				System.err.println("message: " + e.getMessage());
				Throwable cs = ex.getCause();
					while(cs!=null) {
						System.out.println("cause: " + cs);
						cs = cs.getCause();
						
			}
		}
	}
}
}
