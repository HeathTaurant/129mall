package productDetail;

import java.sql.Timestamp;

public class ItemDto {
	int it_id; 
	String it_name;
	int it_color;
	int it_size;
	int it_category;
	String it_summary;
	int it_price;
	int it_hit;
	Timestamp it_datetime;
	Timestamp it_updated_datetime;
	int it_sell_count;
	
	public int getIt_id() {
		return it_id;
	}
	public void setIt_id(int it_id) {
		this.it_id = it_id;
	}
	public String getIt_name() {
		return it_name;
	}
	public void setIt_name(String it_name) {
		this.it_name = it_name;
	}
	public int getIt_color() {
		return it_color;
	}
	public void setIt_color(int it_color) {
		this.it_color = it_color;
	}
	public int getIt_size() {
		return it_size;
	}
	public void setIt_size(int it_size) {
		this.it_size = it_size;
	}
	public int getIt_category() {
		return it_category;
	}
	public void setIt_category(int it_category) {
		this.it_category = it_category;
	}
	public String getIt_summary() {
		return it_summary;
	}
	public void setIt_summary(String it_summary) {
		this.it_summary = it_summary;
	}
	public int getIt_price() {
		return it_price;
	}
	public void setIt_price(int it_price) {
		this.it_price = it_price;
	}
	public int getIt_hit() {
		return it_hit;
	}
	public void setIt_hit(int it_hit) {
		this.it_hit = it_hit;
	}
	public Timestamp getIt_datetime() {
		return it_datetime;
	}
	public void setIt_datetime(Timestamp it_datetime) {
		this.it_datetime = it_datetime;
	}
	public Timestamp getIt_updated_datetime() {
		return it_updated_datetime;
	}
	public void setIt_updated_datetime(Timestamp it_updated_datetime) {
		this.it_updated_datetime = it_updated_datetime;
	}
	public int getIt_sell_count() {
		return it_sell_count;
	}
	public void setIt_sell_count(int it_sell_count) {
		this.it_sell_count = it_sell_count;
	}

	
	
}
