package com.musun129.shopMall.Config;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.musun129.shopMall.Dao.ProductDetailDao;
import com.musun129.shopMall.Service.BuyNowService;

@Configuration
public class ProductDetailConfig {

	@Autowired
	private ProductDetailDao productDetailDao;

	@Bean
	public BuyNowService buyNowService() {
		return new BuyNowService(productDetailDao);
	}

	@Bean
	public DataSource dataSource() {
		DataSource ds = new DataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost/musun129?characterEncoding=utf8");
		ds.setUsername("musun129");
		ds.setPassword("musun129");
		ds.setInitialSize(2);
		ds.setMaxActive(10);
		return ds;
	}

	@Bean
	public ProductDetailDao productDetailDao() {
		return new ProductDetailDao(dataSource());
	}

}
