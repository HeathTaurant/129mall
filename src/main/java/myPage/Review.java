package myPage;

import java.sql.Date;

public class Review {
	
	private int review_id;
	private String mem_userid;
	private int it_id;
	private Date review_date;
	private String review_content;
	private int review_available;
	
	public Review(int it_id, Date review_date, String review_content) {
		this.it_id = it_id;
		this.review_date = review_date;
		this.review_content = review_content;
	}
	
	
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public String getMem_userid() {
		return mem_userid;
	}
	public void setMem_userid(String mem_userid) {
		this.mem_userid = mem_userid;
	}
	public int getIt_id() {
		return it_id;
	}
	public void setIt_id(int it_id) {
		this.it_id = it_id;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public int getReview_available() {
		return review_available;
	}
	public void setReview_available(int review_available) {
		this.review_available = review_available;
	}
	
	

}
