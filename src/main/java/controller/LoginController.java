package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.AutoInfo;
import member.LoginService;
import member.Message;
import member.WrongIDPWException;
@Controller
public class LoginController {
	private LoginService loginService;
	
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
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
	public String loginOK(HttpServletRequest req, HttpSession session, HttpServletResponse response,ModelAndView mav) throws IOException {
		try {
			AutoInfo autoInfo = loginService.infochk(req);
			session.setAttribute("autoInfo", autoInfo);
			return "/Login/loginOK";
		}catch (WrongIDPWException e) {
			// contentType을 먼저하지 않으면 한글이 깨질 수 있음
//			response.setContentType("text/html; charseet=utf8");
//			PrintWriter out = response.getWriter();
//			out.print("<script language='javascript'> alter('Wrong ID or PW'); </script>");
//			out.flush();
			mav.addObject("data", new Message("Wrong ID or PW"));
			mav.setViewName("Message");
			return "/Login/loginMain";
		}
		
	}
}
