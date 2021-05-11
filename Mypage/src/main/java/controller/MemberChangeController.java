package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.musun129.MypageService.MemberChangeService;



@Controller
public class MemberChangeController {
//	
	private MemberChangeService memberChangeService;
	
	public void setMemberChangeService(MemberChangeService memberChangeService) {
		this.memberChangeService = memberChangeService;
	}

	
	
	
	@RequestMapping("/Mypage/MemberChange")
	public String MemberChange() {
		/* memberChangeService.MemberChange(); */
		return "/Mypage/MemberChange";
	}
	
	
}
