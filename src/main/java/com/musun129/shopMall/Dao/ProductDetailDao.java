package com.musun129.shopMall.Dao;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.musun129.shopMall.Dto.Order_detailDto;

@Component
public class ProductDetailDao {
	private JdbcTemplate JdbcTemplate;
	
	
	@Autowired
	public ProductDetailDao() {
	}
	
	public ProductDetailDao(DataSource dataSource) {
		this.JdbcTemplate=new JdbcTemplate(dataSource);
	}
	
	public void addToCart(Order_detailDto order_detailDto) {
		this.JdbcTemplate.update("insert into Cart ()" 
		
		
	}
	
	
}


