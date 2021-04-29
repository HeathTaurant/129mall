package spring;

import java.time.LocalDateTime;

public class RegisterRequest {

	private String id;
	private String password;
	private String confirmPassword;
	private String email;
	private String name;
	private String phone;
	private String birthday;
	private String sex;
	private int postcode;
	private String address;
	private LocalDateTime register_datetime;
	
	
	
	public boolean isPasswordEqualToConfirmPassword() {
		return password.contentEquals(confirmPassword);
	}
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public LocalDateTime getRegister_datetime() {
		return register_datetime;
	}
	public void setRegister_datetime(LocalDateTime register_datetime) {
		this.register_datetime = register_datetime;
	}
	
	
	
	
}
