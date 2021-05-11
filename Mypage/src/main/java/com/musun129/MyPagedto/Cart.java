package com.musun129.MyPagedto;

public class Cart {

	private int cart_id;
	private String mem_userid;
	private int it_id;
	private int it_color;
	private int it_size;
	private int cart_count;
	private int it_price;
	
	public Cart(int it_id, int it_color, int it_price, int it_size) {
		this.it_id = it_id;
		this.it_color = it_color;
		this.it_price = it_price;
		this.it_size = it_size;
	}
	
	
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public String getMem_userid() {
		return mem_userid;
	}
	public void setMem_userid(String mem_userid) {
		this.mem_userid = mem_userid;
	}
	public int getIt_id() {
		return it_id;
	}
	public void setIt_id(int it_id) {
		this.it_id = it_id;
	}
	public int getIt_color() {
		return it_color;
	}
	public void setIt_color(int it_color) {
		this.it_color = it_color;
	}
	public int getIt_size() {
		return it_size;
	}
	public void setIt_size(int it_size) {
		this.it_size = it_size;
	}
	public int getCart_count() {
		return cart_count;
	}
	public void setCart_count(int cart_count) {
		this.cart_count = cart_count;
	}
	public int getIt_price() {
		return it_price;
	}
	public void setIt_price(int it_price) {
		this.it_price = it_price;
	}
	
	
	
}
