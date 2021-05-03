package config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.JoinController;
import controller.LoginController;
import member.JoinService;
import member.LoginService;


@Configuration
public class ControllerConfig {
	@Autowired
	private JoinService joinService;
	
	@Autowired
	private LoginService loginService;
	
	@Bean
	public JoinController JoinController() {
		JoinController controller = new JoinController();
		controller.setJoinService(joinService);
		return controller;
	}
	
	@Bean LoginController loginController() {
		LoginController controller = new LoginController();
		controller.setLoginService(loginService);
		return controller;
	}

}
