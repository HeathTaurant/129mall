package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/Main/Main")
	public String handleStep1() {
		return "Main/Main";
	}
	
//	@RequestMapping("/Join/memberJoin")
//	public String handleStep2() {
//		return "Join/memberJoin";
//	}
//	
//	@RequestMapping("/Login/loginMain")
//	public String handleStep3()  {
//		return "Login/loginMain";
//	}
//	
//	@PostMapping("/Login/loginSuccess")
//	public String handleStep99 (Member member, HttpSession session) {
//		
//
//		session.setAttribute("mem_userid", member.getMem_userid());
////			Member userid = memberDao.selectById(mem_userid);
//			String test = memberDao.test();
//			System.out.println(test);
//
////            model.addAttribute("msg", mem_userid);
////            model.addAttribute("msg2", mem_password);
//
//		return "Login/loginSuccess";
//	}
//	
//	@RequestMapping("/Login/findId")
//	public String handleStep4() {
//		return "Login/findId";
//	}
//	
//	@RequestMapping("/Login/findPw")
//	public String handleStep5() {
//		return "Login/findPw";
//	}
//	
//	@RequestMapping("/Mypage/CartList")
//	public String handleStep6() {
//		return "Mypage/CartList";
//	}
//	
//	@RequestMapping("/Mypage/LastProduct")
//	public String handleStep7() {
//		return "Mypage/LastProduct";
//	}
//	
//	@RequestMapping("/Mypage/MemberDelete")
//	public String handleStep8() {
//		return "Mypage/MemberDelete";
//	}
//	
//	@RequestMapping("/Mypage/MemberUpdate")
//	public String handleStep9() {
//		return "Mypage/MemberUpdate";
//	}
//	
//	@RequestMapping("/Mypage/MyReview")
//	public String handleStep10() {
//		return "Mypage/MyReview";
//	}
//	
//	@RequestMapping("/Mypage/OrderCheck")
//	public String handleStep11() {
//		return "Mypage/OrderCheck";
//	}
//	
//	@RequestMapping("/Mypage/OrderDate")
//	public String handleStep12() {
//		return "Mypage/OrderDate";
//	}
//	
//	@RequestMapping("/Mypage/Pay")
//	public String handleStep13() {
//		return "Mypage/Pay";
//	}
//	
//	@RequestMapping("/Productdetail/main")
//	public String handleStep14() {
//		return "Productdetail/main";
//	}
	
}
