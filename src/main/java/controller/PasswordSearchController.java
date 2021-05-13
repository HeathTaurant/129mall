package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import member.PwSearchService;
import member.mailSendService;
@Controller
public class PasswordSearchController {
	
	private PwSearchService pwSearchService;
	private mailSendService mailSendService;
	public void setPwSearchService(PwSearchService pwSearchService, mailSendService mailSendService) {
		this.pwSearchService = pwSearchService;
		this.mailSendService = mailSendService;
	}
	@RequestMapping("/user/userPwSearch")
	public String userPwSearch(HttpServletRequest request,HttpServletResponse response) throws Exception {
		//파라미터 가져오기
		String id = request.getParameter("mem_userid");
		String email = request.getParameter("mem_email");
		//id와 email로 해당 회원 있는지 검사하여 string 값 전달.
		String msg = pwSearchService.serchIdEmail(id, email);
		
		//임시 비밀번호 생성
		String pw = "";
		for(int i=0;i<10;i++) {
			pw += (char)((Math.random()*26)+97);//랜덤 소문자
			//A부터 Z까지의 문자의 수는 26개, 
			//아스키코드로  65 ~ 90 까지가 영문대문자, 97~122 까지가 영문소문자
		}

		pwSearchService.setPw(id, pw); //DB연결 set pw
		mailSendService.sendEmail(id, pw, email);//메일 전송
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
	    out.println("<script>alert('"+ msg +"');window.history.back();</script>");
	    return null;
	}
	
	

}
