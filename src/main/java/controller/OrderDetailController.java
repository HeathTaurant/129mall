package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderDetailController {

	@RequestMapping("/Mypage/OrderDetail")

	public String OrderDetail() {
		return "/Mypage/OrderDetail";
	}
	

}
