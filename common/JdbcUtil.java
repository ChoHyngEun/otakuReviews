package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcUtil {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portfolio?useSSL=false", "root", "Tkfkdgo450.");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public static void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				System.out.println("rs.close() 오류 발생 : " + e);
			}
		}
		
		close(pstmt, conn);
	}
	
	public static void close(PreparedStatement pstmt, Connection conn) {	
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				System.out.println("pstmt.close() 오류 발생 : " + e);
			}
		}
		
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println("conn.close() 오류 발생 : " + e);
			}
		}
	}
}
