package productDetail;

import java.time.LocalDateTime;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ReviewDto {
	private int review_id;
	private String mem_userid;
	private int it_id;
	private String review_date;
	private String review_content;
	private int review_point;
	private String review_Img;

	
	
	
   
}