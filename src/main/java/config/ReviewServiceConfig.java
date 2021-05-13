package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import productDetail.ProductDetailDao;
import productDetail.ReviewUploadService;

@Configuration
public class ReviewServiceConfig {
	
    private ProductDetailDao productDetailDao;
	
	
    @Bean
    public ReviewUploadService reviewUploadService() {
    	ReviewUploadService reviewUploadService = new ReviewUploadService(productDetailDao);
    	return  reviewUploadService;
    }
    
}
