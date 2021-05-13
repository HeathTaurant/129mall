package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	@RequestMapping("/Mypage/MypageMain")
	public String MypageMain () {
		return "Mypage/MypageMain";
	}
	

}
