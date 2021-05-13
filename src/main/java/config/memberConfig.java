package config;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import controller.MemberDeleteController;
import member.IdSearchService;
import member.JoinService;
import member.LoginService;
import member.MemberDao;
import member.MemberIdCheckService;
import member.PwSearchService;
import member.mailSendService;
import myPage.MemberChangeDao;
import myPage.MemberChangeService;
import productDetail.ProductDetailDao;

@Configuration //1개이상의 빈 제공 클래스는 반드시 명시
@EnableWebMvc // 자바설정용 어노테이션 빈 명시적 사용
public class memberConfig {
	
	//DataSource DB연결정보 작성
	@Bean(destroyMethod = "close")
	public DataSource dataSource() {
		DataSource ds = new DataSource();
		ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost/129mall?characterEncoding=utf8");
		ds.setUsername("musun129");
		ds.setPassword("musun129");
		ds.setInitialSize(2);
		ds.setMaxActive(100);
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
	@Bean
	public IdSearchService idSearchService() {
		return new IdSearchService(memberDao());
	}
	
	@Bean
	public MemberIdCheckService memberIdCheckService() {
		return new MemberIdCheckService(memberDao());
	}
	
	@Bean
	public PwSearchService pwSearchService() {
		return new PwSearchService(memberDao());
	}
	
	@Bean
	public mailSendService mailSendService() {
		return new mailSendService();
	}
	
	@Bean
	public MemberChangeDao memberChangeDao() {
		return new MemberChangeDao(dataSource());
	}
	
	@Bean
	public MemberDeleteController memberDeleteController() {
		return new MemberDeleteController();
	}
	
	@Bean
	public MemberChangeService memChangeSvc() {
		
		 MemberChangeService chaSvc = new MemberChangeService();
		 chaSvc.setMemberChangeService(memberChangeDao());
		return chaSvc; 
		
		
		
	}
	
	@Bean
	public MultipartResolver multipartResolver() {
		StandardServletMultipartResolver multipartResolver = new StandardServletMultipartResolver();
		return multipartResolver;
	}

	@Bean
	public PlatformTransactionManager transactionManager() {
		DataSourceTransactionManager tm = new DataSourceTransactionManager();
		tm.setDataSource(dataSource());
		return tm;
	}

	@Bean
	ProductDetailDao productDetailDao() {
		return new ProductDetailDao(dataSource());
	}
	
	
	
}
