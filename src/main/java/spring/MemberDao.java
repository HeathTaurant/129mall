package spring;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class MemberDao {

	private JdbcTemplate jdbcTemplate;
	private RowMapper<Member> memRowMapper = 
			new RowMapper<Member>() {
				@Override
				public Member mapRow(ResultSet rs, int rowNum)
						throws SQLException {
					Member member = new Member(rs.getString("mem_id"),
							rs.getString("mem_email"),
							rs.getString("mem_password"));
					return member;
				}
			};

	public MemberDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public Member selectById(String mem_userid, String mem_password) {
		
		String SQL = "select * from MEMBER where mem_userid = ?";
		List<Member> results = jdbcTemplate.query(SQL, memRowMapper, mem_userid);
		
		System.out.println(results.get(0));

		return results.get(0);
	}
	
	public String test() {
		return "test문구";
	}
}
