package productDetail;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;

public class ReviewUploadService {
	@Autowired
	private ProductDetailDao productDetailDao;
	//Dao 생성자 주입
	
	  public ReviewUploadService(ProductDetailDao productDetailDao) {
	  this.productDetailDao=productDetailDao; }
	 
	
	//reviewUpload를 위한 Service
	public void reviewUpload(ReviewRequestDto reviewRequestDto,String Review_Img ) {
		  LocalDateTime now = LocalDateTime.now(); 
		  DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd"); 
		  String formatDateTime = now.format(format); 
			/* LocalDateTime review_date = LocalDateTime.now(); */
		
		ReviewDto reviewDto = new ReviewDto(reviewRequestDto.getReview_id(),reviewRequestDto.getMem_userid(),
				reviewRequestDto.getIt_id(),formatDateTime,reviewRequestDto.getReview_content(),
				reviewRequestDto.getReview_point(),Review_Img);
		
		
		
		 productDetailDao.reviewUpload(reviewDto);
		
	}
	
	
}
