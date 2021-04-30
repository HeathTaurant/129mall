package com.musun129.shopMall.Service;

import org.springframework.stereotype.Service;

import com.musun129.shopMall.Dao.ProductDetailDao;

@Service
public class BuyNowService {
	
	private ProductDetailDao productDetailDao;
	
	public BuyNowService(ProductDetailDao productDetailDao) {
		this.productDetailDao= productDetailDao;
	}
	
	
	
	
}
