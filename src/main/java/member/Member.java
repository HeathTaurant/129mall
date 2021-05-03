package member;

import java.time.LocalDateTime;

public class Member {
	private int mem_id; // 사용자 번호
	private String mem_userid; //사용자 아이디
	private String mem_email; //사용자 이메일
	private String mem_password; //사용자 비밀번호
	private String mem_username; //사용자 이름
	private String mem_phone; //사용자 핸드폰 번호
	private LocalDateTime mem_birthday; //사용자 생일
	private int mem_sex; //사용자 성별
	private int mem_postcode; //사용자 우편번호
	private String mem_address1; //사용자 상세주소1
	private String mem_address2; //사용자 상세주소2
	private LocalDateTime mem_register_datetime; //사용자 가입일자
	
	//member 생성자 (set)
	public Member( String mem_userid, String mem_email, String mem_password, String mem_username, String mem_phone,
			LocalDateTime mem_birthday, int mem_sex, int mem_postcode, String mem_address1, String mem_address2, LocalDateTime mem_register_datetime) {
		this.mem_userid = mem_userid;
		this.mem_email = mem_email;
		this.mem_password = mem_password;
		this.mem_username = mem_username;
		this.mem_phone = mem_phone;
		this.mem_birthday = mem_birthday;
		this.mem_sex = mem_sex;
		this.mem_postcode = mem_postcode;
		this.mem_address1 = mem_address1;
		this.mem_address2 = mem_address2;
		this.mem_register_datetime = mem_register_datetime;
	}
	

	public void setMem_id(int mem_id) { //Auto-increment
		this.mem_id = mem_id;
	}
	
	
	//get
	public int getMem_id() {
		return mem_id;
	}

	public String getMem_userid() {
		return mem_userid;
	}

	public String getMem_email() {
		return mem_email;
	}

	public String getMem_password() {
		return mem_password;
	}

	public String getMem_username() {
		return mem_username;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public LocalDateTime getMem_birthday() {
		return mem_birthday;
	}

	public int getMem_sex() {
		return mem_sex;
	}

	public int getMem_postcode() {
		return mem_postcode;
	}

	public String getMem_address1() {
		return mem_address1;
	}

	public String getMem_address2() {
		return mem_address2;
	}

	public LocalDateTime getMem_register_datetime() {
		return mem_register_datetime;
	}
}
