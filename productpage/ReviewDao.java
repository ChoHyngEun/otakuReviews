package com.portfolio.productpage;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import common.JdbcUtil;

public class ReviewDao {

	private ReviewDao() {
	}

	private static ReviewDao instance = new ReviewDao();

	public static ReviewDao getInstance() {
		return instance;
	}
	
	
	//리뷰 목록 불러오기
	public ArrayList<ReviewVo> reviewList(int review_num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		ArrayList<ReviewVo> list = new ArrayList<ReviewVo>();
		try {
			conn = JdbcUtil.getConnection();

			String query = "select * from  reviews where review_no=? order by num desc";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, review_num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int num = rs.getInt("review_no");
				String id = rs.getString("id");
				String content = rs.getString("content");
				Date writedate = rs.getDate("writedate");
				ReviewVo ReviewVo = new ReviewVo(review_num, id, content, writedate);
				list.add(ReviewVo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			//DB 객체 반환
			JdbcUtil.close(rs, pstmt, conn);
		}
		
		return list;
	}
	
	public void insertReview(String txt, String id, int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement("INSERT INTO reviews VALUES(?, ?, ?, ?, SYSDATE)");
			pstmt.setInt(1, maxReviewNum(num)+1);
			pstmt.setString(2, id);
			pstmt.setString(3, txt);

			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(pstmt, conn);
		}
		
	}
	
	public int maxReviewNum(int review_num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int num=0;
		try {
			conn = JdbcUtil.getConnection();
			String query = "select max(num) from  reviews where num=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				num = rs.getInt(1);
			}	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn);
		}
		
		return num;
	}
	
	public void deleteReview(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement("delete from reviews where num=?");
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(pstmt, conn);
		}
	}
}
