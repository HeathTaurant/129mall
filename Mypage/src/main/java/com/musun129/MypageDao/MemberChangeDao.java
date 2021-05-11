package com.musun129.MypageDao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import member.Member;



public class MemberChangeDao {
	
	
	private JdbcTemplate jdbcTemplate;

	public MemberChangeDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	
	
//	public Member MemberSelect(String mem_userid) {
//	List<Member> results = jdbcTemplate.query(
//		"select MEM_EMAIL,MEM_USERNAME,MEM_PHONE"+ 
//				"MEM_BIRTHDAY, MEM_POSTCODE, MEM_ADRESS1, MEM_ADRESS2 from MEMBER where "
//						+ "MEM_USERID",
//				new RowMapper<Member>() {
//				@Override
//				public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
//						Member member = new Member(
//							rs.getString("MEM_EMAIL"),
//								rs.getString("MEM_USERNAME"),
//								rs.getString("MEM_PHONE"),
//			
//							rs.getInt("MEM_POSTCODE"),
//							rs.getString("MEM_ADRESS1"),
//								rs.getString("MEM_ADRESS2"));
//								
//						return member;
//					}
//				}, mem_userid);
// 
//		return results.isEmpty() ? null : results.get(0);
//	}

	
	
	public void MemberChange(Member member) {
		jdbcTemplate.update("update MEMBER set MEM_EMAIL=?, MEM_PASSWORD=?, MEM_USERNAME=?, MEM_PHONE=? where MEM_USERID=?",
				member.getMem_email(),member.getMem_password(),member.getMem_username(),member.getMem_phone(),
				member.getMem_userid());		
	}
	
	public void Memberdelete(Member member) {
		jdbcTemplate.update("delete MEMBER where MEM_PASSWORD = ?",
				 member.getMem_password());
	}
	
//	public MemberRequest selectByPassword(String mem_userid, String mem_password) {
//		List<MemberRequest> results = jdbcTemplate.query(
//				"select * from MEMBER where MEM_PASSWORD = ?",
//				new RowMapper<MemberRequest>() {
//					@Override
//					public MemberRequest mapRow(ResultSet rs, int rowNum) throws SQLException {
//						MemberRequest memberRequest = new MemberRequest(
//								rs.getString("MEM_PASSWORD"),
//								rs.getString("MEM_USERID"));
//						return memberRequest;
//					}
//				}, mem_password);
// 
//		return results.isEmpty() ? null : results.get(0);
//	}

	

}
