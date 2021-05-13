package productDetail;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ItemRequestDto {
	int it_id; 
	String it_name;
	String it_color;
	int it_size;
	int it_price;
	int it_sell_count;
	
	
}
