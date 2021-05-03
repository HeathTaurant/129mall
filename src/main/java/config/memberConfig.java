package config;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import member.JoinService;
import member.LoginService;
import member.MemberDao;

@Configuration //1개이상의 빈 제공 클래스는 반드시 명시
@EnableWebMvc // 자바설정용 어노테이션 빈 명시적 사용
public class memberConfig {
	//DataSource DB연결정보 작성
	@Bean(destroyMethod = "close")
	public DataSource dataSource() {
		DataSource ds = new DataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost/129mall?characterEncoding=utf8");
		ds.setUsername("musun129");
		ds.setPassword("musun129");
		ds.setInitialSize(2);
		ds.setMaxActive(10);
		ds.setTestWhileIdle(true);
		ds.setMinEvictableIdleTimeMillis(60000*3);
		ds.setTimeBetweenEvictionRunsMillis(10 * 1000);
		return ds;
	}
	
	@Bean
	public MemberDao memberDao() {
		return new MemberDao(dataSource());
	}
	
	@Bean
	public JoinService joinService() {
		return new JoinService(memberDao());
	}
	
	@Bean
	public LoginService loginService() {
		LoginService loginService = new LoginService();
		loginService.setLoginService(memberDao());
		return loginService;
	}
	
}
