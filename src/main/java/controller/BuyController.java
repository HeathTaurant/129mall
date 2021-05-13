package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BuyController {

	@RequestMapping("/Mypage/Buy")
	public String Buy() {
		return "/Mypage/Buy";
	}
}
