package com.portfolio.productpage;

import java.sql.Date;

public class ProductpageVo {
	
	private String pro_img; //상품사
	private String pro_name; //상품이
	private int pro_price; //상품가
	private String pro_info; //상품정
	private String pro_brand; //상품 브랜드
	
	public ProductpageVo(String pro_img,String pro_name,int pro_price, String pro_info, String pro_brand) {
		super();
		this.pro_img = pro_img;
		this.pro_name = pro_name;
		this.pro_price = pro_price;
		this.pro_info = pro_info;
		this.pro_brand = pro_brand;
	}
	
	
	public String getPro_img() {
		return pro_img;
	}
	public void setPro_img(String pro_img) {
		this.pro_img = pro_img;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public int getPro_price() {
		return pro_price;
	}
	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}
	public String getPro_info() {
		return pro_info;
	}
	public void setPro_info(String pro_info) {
		this.pro_info = pro_info;
	}
	public String getPro_brand() {
		return pro_brand;
	}
	public void setPro_brand(String pro_brand) {
		this.pro_brand = pro_brand;
	}

	
}