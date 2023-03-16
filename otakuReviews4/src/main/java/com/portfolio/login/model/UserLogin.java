package com.portfolio.login.model;

//멤버 변수를 직렬화하여 바이트로 변환함으로써 데이터 외부 서버로의 전송을 가능하게 함
import java.io.Serializable;
//로그인 구축을 위한 JavaBean file
public class UserLogin implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private String userName;
	private String password;
	
	//getters and setters
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
