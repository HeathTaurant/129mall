package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {

	@RequestMapping("/Mypage/CartList")
	public String CartList () {
		return "/Mypage/CartList";
	}
}
