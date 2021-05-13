package config;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;

import productDetail.ProductDetailDao;

@Configuration
@EnableTransactionManagement
@Import(ReviewServiceConfig.class)
public class ProductConfig {

//	@Bean(destroyMethod = "close")
//	public DataSource dataSource() {
//		DataSource ds = new DataSource();
//		ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
//		ds.setUrl("jdbc:mysql://localhost/129mall?characterEncoding=utf8");
//		ds.setUsername("musun129");
//		ds.setPassword("musun129");
//		ds.setInitialSize(2);
//		ds.setMaxActive(10);
//		ds.setTestWhileIdle(true);
//		ds.setMinEvictableIdleTimeMillis(60000 * 3);
//		ds.setTimeBetweenEvictionRunsMillis(10 * 1000);
//		return ds;
//	}
//
//	@Bean
//	public MultipartResolver multipartResolver() {
//		StandardServletMultipartResolver multipartResolver = new StandardServletMultipartResolver();
//		return multipartResolver;
//	}
//
//	@Bean
//	public PlatformTransactionManager transactionManager() {
//		DataSourceTransactionManager tm = new DataSourceTransactionManager();
//		tm.setDataSource(dataSource());
//		return tm;
//	}
//
//	/*
//	 * @Bean public MemberDao memberDao() { return new MemberDao(dataSource()); }
//	 * 
//	 * @Bean public MemberRegisterService memberRegSvc() { return new
//	 * MemberRegisterService(memberDao()); }
//	 * 
//	 * @Bean public ChangePasswordService changePwdSvc() { ChangePasswordService
//	 * pwdSvc = new ChangePasswordService(); pwdSvc.setMemberDao(memberDao());
//	 * return pwdSvc; }
//	 */
//	/////////////////////////////////////////////////////////////////////
//	@Bean
//	ProductDetailDao productDetailDao() {
//		return new ProductDetailDao(dataSource());
//	}

}