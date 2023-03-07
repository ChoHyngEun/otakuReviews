package com.portfolio.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.portfolio.login.model.UserLogin;

public class LoginDAO {
	
	//UserLogin.java 모델로부터 login information을 get하여 validate하기위함 //passing UserLogin parameters
	public boolean validate(UserLogin userLogin) throws ClassNotFoundException{
		//false by default
		boolean checkStatus = false;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		//database 연결
		try (Connection connection = DriverManager
				.getConnection("jdbc:mysql://localhost:3306/portfolio?useSSL=false", "root", "root");
				
			//PreparedStatement 선언 및 query	
			PreparedStatement preparedStatement = connection
						.prepareStatement("select * from login where username = ? and password = ?")){
			preparedStatement.setString(1, userLogin.getUserName());
			preparedStatement.setString(2, userLogin.getPassword());
			
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
