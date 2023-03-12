package com.portfolio.productpage;

import java.sql.Date;

public class ReviewVo {
	
	int num;
	String id;
	String content;
	Date writedate;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWritedate() {
		return writedate;
	}
	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}
	
	public ReviewVo(int num, String id, String content, Date writedate) {
		super();
		this.num = num;
		this.id = id;
		this.content = content;
		this.writedate = writedate;
	}
}
