package spring;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Member {

	private int mem_id;
	private String mem_userid;
	private String mem_email;
	private String mem_password;
	private String mem_username;
	private String mem_phone;
	private String mem_birthday;
	private int mem_sex;
	private int mem_postcode;
	private String mem_address1;
	private String mem_address2;
	private Timestamp mem_register_datetime;
	private String mem_register_ip;
	private Timestamp mem_lastlogin_datetime;
	private String lastlogin_ip;
	
	public Member(String mem_userid, String mem_email,
			String mem_password) {
		this.mem_userid = mem_userid;
		this.mem_email = mem_email;
		this.mem_password = mem_password;
	}
}
