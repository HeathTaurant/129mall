package productDetail;



import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ReviewRequestDto {
	private int review_id;
	private String mem_userid;
	private int it_id;
	private String review_content;
	private int review_point;
	private MultipartFile review_Img;
	
		}

   
