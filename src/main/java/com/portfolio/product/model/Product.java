package com.portfolio.product.model;

//Product javabean 상품 리뷰용
public class Product {
	
	private int product_id;
	private String product_name;
	private String product_brand;
	private float product_price;
	private String product_review;
	
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_brand() {
		return product_brand;
	}
	public void setProduct_brand(String product_brand) {
		this.product_brand = product_brand;
	}
	public float getProduct_price() {
		return product_price;
	}
	public void setProduct_price(float product_price) {
		this.product_price = product_price;
	}
	public String getProduct_review() {
		return product_review;
	}
	public void setProduct_review(String product_review) {
		this.product_review = product_review;
	}
	
}
