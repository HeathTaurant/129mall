package productDetail;

import org.springframework.stereotype.Service;

@Service
public class AddToCartService {
	private ProductDetailDao productDetailDao;

	public AddToCartService(ProductDetailDao productDetailDao) {
		this.productDetailDao = productDetailDao;
	
		
	
	}
	
	
}
