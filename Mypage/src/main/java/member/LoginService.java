package member;


import javax.servlet.http.HttpServletRequest;

public class LoginService {
	private MemberDao memberDao;
	public void setLoginService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	public Member infochk(HttpServletRequest req) {
		String id = req.getParameter("mem_userid");
		String pw = req.getParameter("mem_password");
		
		Member autoinfo = memberDao.InfoChk(id, pw);
		if(autoinfo == null) {
			//해당 id 없음
			throw new WrongIDPWException();
		}else if(!autoinfo.matchPassword(pw)) {
			//비밀번호 틀림
			throw new WrongIDPWException();
		}
		return new Member(autoinfo.getMem_userid(), autoinfo.getMem_email() ,autoinfo.getMem_password(), autoinfo.getMem_username(),
				autoinfo.getMem_phone(),autoinfo.getMem_birthday(), autoinfo.getMem_sex(), autoinfo.getMem_postcode(),
				autoinfo.getMem_address1(), autoinfo.getMem_address2(),autoinfo.getMem_register_datetime());
	}
}
