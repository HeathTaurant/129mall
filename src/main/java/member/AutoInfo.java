package member;
//세션 정보
public class AutoInfo {
	private int mem_id;
	private String mem_userid;
	private String mem_password;
	private String mem_username;
	
	public AutoInfo(int mem_id, String mem_userid, String mem_password, String mem_username) {
		// TODO Auto-generated constructor stub
	this.mem_id = mem_id;
	this.mem_userid = mem_userid;
	this.mem_password = mem_password;
	this.mem_username = mem_username;
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
	public String getMem_username() {
		return mem_username;
	}
	public void setMem_username(String mem_username) {
		this.mem_username = mem_username;
	}
	public String getMem_password() {
		return mem_password;
	}
	public void setMem_password(String mem_password) {
		this.mem_password = mem_password;
	}
	//암호 일치 여부 확인
	public boolean matchPassword(String password) {
		return this.mem_password.equals(password);
	}
}
