package myPage;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import member.Member;

public class MemberChangeDao {
	
	
	private JdbcTemplate jdbcTemplate;

	public MemberChangeDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	
	
	// 회원정보 수정에 필요한 값을 불러오는 
		public void memberChange(HttpServletRequest req) {
			String id =  req.getParameter("id");
			String email =  req.getParameter("mem_email");
			String password =  req.getParameter("mem_password"); 
			String name = req.getParameter("mem_username");
			String phone1 =  req.getParameter("num1");
			String phone2 =  req.getParameter("mem_num2");
			String phone3 =  req.getParameter("mem_num3");
			String phone =  phone1+phone2+phone3;
			System.out.println(phone);
			System.out.println("----");
			
			Member member = new Member(email,password,name,phone,id);
			memberChange(member);
			System.out.println("업데이트 메서드 실행 후");
			
		}
		
		
		//회원 정보 수정을 하는 메서드
		 public void memberChange(Member member) { 
			 String sql = "update MEMBER set MEM_EMAIL=?, MEM_PASSWORD=?, MEM_USERNAME=?, MEM_PHONE=? where MEM_USERID=?";
			 jdbcTemplate.update(sql,member.getMem_email(),member.getMem_password(),member.getMem_username(),member.getMem_phone(),member.getMem_userid());
			System.out.println("--------------------");
		 }
		
		 
		 
		public void memberDelete(HttpServletRequest req) {
			String password = req.getParameter("mem_password");
			String id = req.getParameter("mem_userid");
			Member member = new Member(password,id);
			memberDelete(member);
		}
		
		
		//회원 정보 삭제 
		public void memberDelete(Member member) {
			jdbcTemplate.update("delete from MEMBER where MEM_PASSWORD = ? and MEM_USERID=?",
					 member.getMem_password(),member.getMem_userid());
		}

	

}
