package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import member.MemberIdCheckService;


@Controller
public class IdCheckController {
	private MemberIdCheckService memberIdCheckService;
	public void setMemberIdCheckService(MemberIdCheckService memberIdCheckService) {
		this.memberIdCheckService = memberIdCheckService;
	}
	
	@RequestMapping("/Join/MemberIdChk")
	public String IdCheck(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("id");
		boolean x = memberIdCheckService.ChkId(id); //아이디 중복체크 서비스 실행
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		//중복된 아이디라면 0을 사용가능한 아이디라면 1을 화면으로 전달한다.
		if(x) out.println("0");//아이디 중복
		else out.println("1");
		out.close();
		return null;
	}
}
