package member;

import org.apache.commons.mail.HtmlEmail;
public class mailSendService {

	public void sendEmail(String id,String pw,String email) throws Exception {
		//Mail Server 설정
		String charset="utf-8";
		//String hostSMTP = "smtp.naver.com";//왜안됨?
		String hostSMTP = "smtp.gmail.com";
		
		//smtp 서버명
		String hostSMTPid = "zzungk99@gmail.com";
		String hostSMTPpwd = "xnpufndewbokkkmi";
		
		String from = "129mall@musun129.com";// 보내는 사람
		String fromName = "129mall";
		String subject = "[129mall]안녕하세요."+id+"님, 임시 비밀번호 발급되었습니다.";// 메일 제목
		String content = "<div align='center' style='border:1px solid black;'>";
			   content += "<h2>" + id +"님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요. </h2>";
			   content += "<p>임시 비밀번호 : " + pw + "</p> </div>";// 내용
		
		try {
			HtmlEmail mail = new HtmlEmail();
			mail.setDebug(true);
			mail.setCharset(charset);
			mail.setSSLOnConnect(true); //SSL 사용(TLS가 없는 경우 SSL사용)
			mail.setHostName(hostSMTP);
			mail.setSmtpPort(465);//smtp포트 번호
			mail.setAuthentication(hostSMTPid, hostSMTPpwd);
			mail.setStartTLSEnabled(true);//TLS사용
			mail.addTo(email);//받는사람
			//mail.addTo("zzungk99@gmail.com");
			mail.setFrom(from, fromName, charset);
			mail.setSubject(subject); // 제목
			mail.setHtmlMsg(content);
			mail.send();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
