package myPage;

public class OrderList {
	
	private int order_detail_id;
	private String mem_userid;
	private String payment_info;
	private int order_total_money;
	
	
	
	public int getOrder_detail_id() {
		return order_detail_id;
	}
	public void setOrder_detail_id(int order_detail_id) {
		this.order_detail_id = order_detail_id;
	}
	public String getMem_userid() {
		return mem_userid;
	}
	public void setMem_userid(String mem_userid) {
		this.mem_userid = mem_userid;
	}
	public String getPayment_info() {
		return payment_info;
	}
	public void setPayment_info(String payment_info) {
		this.payment_info = payment_info;
	}
	public int getOrder_total_money() {
		return order_total_money;
	}
	public void setOrder_total_money(int order_total_money) {
		this.order_total_money = order_total_money;
	}
	
	
}
