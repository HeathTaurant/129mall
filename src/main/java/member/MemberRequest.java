package member;

//회원가입시 Request를 받아오기 위한 class
//회원정보 세션
public class MemberRequest {
	private String mem_userid; //사용자 아이디
	private String mem_email; //사용자 이메일
	private String mem_password; //사용자 비밀번호
	private String mem_username; //사용자 이름
	private int mem_sex; //사용자 성별
	private int mem_postcode; //사용자 우편번호
	private String mem_address1; //사용자 상세주소1
	private String mem_address2; //사용자 상세주소2

	public MemberRequest(String mem_userid,String mem_email,String mem_password, String mem_username,
			int mem_sex, int mem_postcode, String mem_address1, String mem_address2) {
		this.mem_userid = mem_userid;
		this.mem_email = mem_email;
		this.mem_password = mem_password;
		this.mem_username = mem_username;
		this.mem_sex = mem_sex;
		this.mem_postcode = mem_postcode;
		this.mem_address1 = mem_address1;
		this.mem_address2 = mem_address2;
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

}
