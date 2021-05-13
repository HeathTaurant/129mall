package myPage;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class OrderDetailDao {
	
	private JdbcTemplate jdbcTemplate;

	public OrderDetailDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	
	//public  OrderDetail(String id, String pw)
	
	
	
	

}
