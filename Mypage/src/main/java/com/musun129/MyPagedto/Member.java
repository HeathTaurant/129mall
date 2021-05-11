package com.musun129.MyPagedto;

import java.sql.Date;
import java.time.LocalDateTime;



public class Member {
	
	private int mem_id; // 사용자 번호
	private String mem_userid; //사용자 아이디
	private String mem_email; //사용자 이메일
	private String mem_password; //사용자 비밀번호
	private String mem_username; //사용자 이름
	private String mem_phone; //사용자 핸드폰 번호
	private Date mem_birthday; //사용자 생일
	private int mem_sex; //사용자 성별
	private int mem_postcode; //사용자 우편번호
	private String mem_address1; //사용자 상세주소1
	private String mem_address2; //사용자 상세주소2
	private LocalDateTime mem_register_datetime; //사용자 가입일자
	
	
	public Member( String mem_email, String mem_username, String mem_phone,
			Date mem_birthday, int mem_sex, int mem_postcode, String mem_address1, String mem_address2) {
		
		this.mem_email = mem_email;
		this.mem_username = mem_username;
		this.mem_phone = mem_phone;
		this.mem_birthday = mem_birthday;
		this.mem_sex = mem_sex;
		this.mem_postcode = mem_postcode;
		this.mem_address1 = mem_address1;
		this.mem_address2 = mem_address2;
	}
	


	public Member(String mem_password,String mem_userid) {
		this.mem_password = mem_password;
		this.mem_userid = mem_userid;
	}



	public int getMem_id() {
		return mem_id;
	}


	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}


	public String getMem_userid() {
		return mem_userid;
	}


	public void setMem_userid(String mem_userid) {
		this.mem_userid = mem_userid;
	}


	public String getMem_email() {
		return mem_email;
	}


	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getMem_password() {
		return mem_password;
	}


	public void setMem_password(String mem_password) {
		this.mem_password = mem_password;
	}


	public String getMem_username() {
		return mem_username;
	}

	public void setMem_username(String mem_username) {
		this.mem_username = mem_username;
	}


	public String getMem_phone() {
		return mem_phone;
	}


	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}


	public Date getMem_birthday() {
		return mem_birthday;
	}


	public void setMem_birthday(Date mem_birthday) {
		this.mem_birthday = mem_birthday;
	}


	public int getMem_sex() {
		return mem_sex;
	}


	public void setMem_sex(int mem_sex) {
		this.mem_sex = mem_sex;
	}


	public int getMem_postcode() {
		return mem_postcode;
	}


	public void setMem_postcode(int mem_postcode) {
		this.mem_postcode = mem_postcode;
	}

	public String getMem_address1() {
		return mem_address1;
	}


	public void setMem_address1(String mem_address1) {
		this.mem_address1 = mem_address1;
	}


	public String getMem_address2() {
		return mem_address2;
	}

	public void setMem_address2(String mem_address2) {
		this.mem_address2 = mem_address2;
	}


	public LocalDateTime getMem_register_datetime() {
		return mem_register_datetime;
	}



	public void setMem_register_datetime(LocalDateTime mem_register_datetime) {
		this.mem_register_datetime = mem_register_datetime;
	}


	public void selectByPassword(String password) {
		if (!mem_password.equals(password))
			throw new WrongIdPasswordException();
	}

	public boolean isPasswordEqualToConfirmPassword() {
		// TODO Auto-generated method stub
		return false;
	}
	
	
}
