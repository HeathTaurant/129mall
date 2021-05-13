package config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.BuyController;
import controller.CartController;
import controller.FileUploadController;
import controller.IdCheckController;
import controller.JoinController;
import controller.LoginController;
import controller.LogoutController;
import controller.MainController;
import controller.MemberChangeController;
import controller.MypageController;
import controller.OrderDetailController;
import controller.PasswordSearchController;
import controller.ProductDetailController;
import controller.UserSearchController;
import member.IdSearchService;
import member.JoinService;
import member.LoginService;
import member.MemberIdCheckService;
import member.PwSearchService;
import member.mailSendService;
import myPage.MemberChangeService;


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
	
	@Autowired 
	private PwSearchService pwSearchService;

	@Autowired
	private mailSendService mailSendService;

	@Autowired
	private MemberChangeService memberChangeService;
	
	@Bean
	public MainController mainController() {
		return new MainController();
	}
	
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
	
	@Bean 
	public PasswordSearchController passwordSearchController() {
		PasswordSearchController controller = new PasswordSearchController();
		controller.setPwSearchService(pwSearchService,mailSendService);
		return controller;
	}
	
	@Bean 
	public MemberChangeController memberChangeController() {
		MemberChangeController mchcontroller = new MemberChangeController();
		mchcontroller.setMemberChangeService(memberChangeService);
		return mchcontroller;
	}
	
	@Bean
	public MypageController mypageController() {
		return new MypageController();
	}
	
	@Bean
	public BuyController buyController() {
		return new BuyController();
	}
	
	@Bean
	public CartController cartController() {
		return new CartController();
	}
	
	@Bean
	public ProductDetailController productDetailController() {
		return new ProductDetailController();
	}
	
	@Bean
	public OrderDetailController orderDetailController() {
		return new OrderDetailController();
	}
	
	@Bean
	public FileUploadController fileUploadController(){
		return new FileUploadController();
	}
}
