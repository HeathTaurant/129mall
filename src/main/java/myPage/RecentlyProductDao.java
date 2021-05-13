package myPage;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class RecentlyProductDao {

	
	private JdbcTemplate jdbcTemplate;

	public RecentlyProductDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	
}
