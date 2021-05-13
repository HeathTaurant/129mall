package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import myPage.MemberChangeDao;
import myPage.MemberDeleteService;



@Controller
public class MemberDeleteController {
	
	private MemberDeleteService memberDeleteService;
	
	@Autowired
	private MemberChangeDao memberChangeDao;
	
	public void setMemberDeleteService(MemberDeleteService memberDeleteService) {
		this.memberDeleteService = memberDeleteService;
	}
	
	@RequestMapping("/Mypage/MemberDelete")
	public String MemberDelete() {
		
		return "/Mypage/MemberDelete";
	}
	
	
	@RequestMapping("/Mypage/MemberDeleteOk")
	public String MemberDelete(HttpServletRequest req ) {
		memberChangeDao.memberDelete(req);
		
		
		return "/Main/Main";
	}
	
	

}
