package config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.IdCheckController;
import controller.JoinController;
import controller.LoginController;
import controller.LogoutController;
import controller.UserSearchController;
import member.IdSearchService;
import member.JoinService;
import member.LoginService;
import member.MemberIdCheckService;


@Configuration
public class ControllerConfig {
	@Autowired
	private JoinService joinService;
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private IdSearchService idSearchService;
	
	@Autowired
	private MemberIdCheckService memberIdCheckService;
	@Bean
	public JoinController JoinController() {
		JoinController controller = new JoinController();
		controller.setJoinService(joinService);
		return controller;
	}
	
	@Bean
	public LoginController loginController() {
		LoginController controller = new LoginController();
		controller.setLoginService(loginService);
		return controller;
	}

	@Bean
	public LogoutController logoutController() {
		return new LogoutController();
	}
	
	@Bean
	public UserSearchController userSearchController() {
		UserSearchController controller = new UserSearchController();
		controller.setIdSearchService(idSearchService);
		return controller;
	}
	
	@Bean
	public IdCheckController idCheckController() {
		IdCheckController controller = new IdCheckController();
		controller.setMemberIdCheckService(memberIdCheckService);
		return controller;
	}
}
