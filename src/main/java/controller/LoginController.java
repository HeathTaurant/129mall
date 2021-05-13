package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import member.LoginService;
import member.Member;
import member.WrongIDPWException;
@Controller
public class LoginController {
	private LoginService loginService;
	
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	
	@RequestMapping("/Maintest")
	public String Maintest() {
		return "/Maintest";
	}
	
	@RequestMapping("/Login/loginMain")
	public String LoginMain() {
		return "/Login/loginMain";
	}
	
	@RequestMapping("/Login/findId")
	public String findId() {
		return "/Login/findId";
	}

	@RequestMapping("/Login/findPw")
	public String findPw() {
		return "/Login/findPw";
	}
	
	@RequestMapping("/Login/loginOK")
	public String loginOK(HttpServletRequest req, HttpSession session, HttpServletResponse response) throws IOException {
		try {
			Member autoInfo = loginService.infochk(req);
			session.setAttribute("autoInfo", autoInfo);
			//return "/Login/loginOK";
		    return "redirect:/Main/Main"; //로그인 성공해서 Main으로 이동
		}catch (WrongIDPWException e) {
			//이 방법 쓰려면 매개변수 Model model 추가하기
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter out = response.getWriter();
		    out.println("<script>alert('아이디 혹은 비밀번호가 맞지 않습니다.');window.history.back();</script>");
		   // out.flush();//예외 발생 원인 버퍼에있는거강제로 스트림으로 뿌림
		   //return "redirect:/Login/loginMain";
		   //이거 리다이렉트로 바꾸니까 POST http://localhost:9090/Login/loginOK net::ERR_INCOMPLETE_CHUNKED_ENCODING 200 에러뜸
		}
		return null;		
	}
}
