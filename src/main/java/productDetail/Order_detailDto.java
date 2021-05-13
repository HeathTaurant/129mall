package productDetail;

public class Order_detailDto {
	int order_id;
	String mem_userid;
	int it_id;
	int it_name;
	int it_color;
	int it_size;
	int order_detail_count;
	int de_price;
	int price;
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public String getMem_userid() {
		return mem_userid;
	}
	public void setMem_userid(String mem_userid) {
		this.mem_userid = mem_userid;
	}
	public int getIt_name() {
		return it_name;
	}
	public void setIt_name(int it_name) {
		this.it_name = it_name;
	}
	public int getIt_id() {
		return it_id;
	}
	public void setIt_id(int it_id) {
		this.it_id = it_id;
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
	public int getOrder_detail_count() {
		return order_detail_count;
	}
	public void setOrder_detail_count(int order_detail_count) {
		this.order_detail_count = order_detail_count;
	}
	public int getDe_price() {
		return de_price;
	}
	public void setDe_price(int de_price) {
		this.de_price = de_price;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

}
