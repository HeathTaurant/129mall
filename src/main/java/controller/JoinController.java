package controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import member.JoinService;
import member.MemberRequest;
@Controller
public class JoinController {
	
	private JoinService joinService;
	
	public void setJoinService(JoinService joinService) {
		this.joinService = joinService;
	}
	
	//@RequestMapping @PostMapping @GetMapping
	//요청경로가 /views/Join/memberJoin인 경우 별다른 처리 없이 memberJoin.jsp 보여줌 
	@RequestMapping("/Join/memberJoin")
	public String memberJoin() {
		return "/Join/memberJoin";
	}
	
	@RequestMapping("/Join/joinOk")
	public String memberJoinOk(MemberRequest MemReq, HttpServletRequest request) {
		//커맨드 객체와 안맞는건 여기서 처리해서 set해야됨
		joinService.regist(MemReq, request); //member set 완료
		return "/Join/joinOk";
	}
}
