package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderCancelController {
	
	@RequestMapping("/Mypage/OrderCancel")

	public String OrderCancel() {
		return "/Mypage/OrderCancel";
	}

}
