package config;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DBConfig {
	
	@Bean(destroyMethod = "close")
	public DataSource dataSource() {
		DataSource ds = new DataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost/129mall?characterEncoding=utf8");
		ds.setUsername("musun129");
		ds.setPassword("musun129");
		ds.setInitialSize(10);
		ds.setMaxActive(100);
		return ds;
	}

	
}
