package productDetail;

import org.springframework.stereotype.Service;

@Service
public class BuyNowService {
	
	private ProductDetailDao productDetailDao;
	
	public BuyNowService(ProductDetailDao productDetailDao) {
		this.productDetailDao= productDetailDao;
	}
	
	
	
	
}
