package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import member.Member;
import myPage.MemberChangeDao;
import myPage.MemberChangeService;



@Controller
public class MemberChangeController {
private MemberChangeService memberChangeService;
	
	@Autowired
	private MemberChangeDao memberChangeDao;
	
	public void setMemberChangeService(MemberChangeService memberChangeService) {
		this.memberChangeService = memberChangeService;
	}
	
	@RequestMapping("/Mypage/MemberChange")
	public String memberChange() {
//		memberChangeService.MemberChange(member);
		return "/Mypage/MemberChange";
	}
	
	@PostMapping("/Mypage/MemChangeOk")
	public String memberChange(HttpServletRequest req,HttpSession session) {
		System.out.println(session.getAttribute("test"));
		Member m = (Member)session.getAttribute("autoInfo");
		
		System.out.println(m.getMem_userid());
		System.out.println("컨트롤러는 와지는지?");
		memberChangeDao.memberChange(req);
		System.out.println("메서드는 재대로 실행 됏는지??");
		
		
		
		
		return "/Login/loginMain";
		
	}

	
	
}
