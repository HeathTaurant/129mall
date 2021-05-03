package member;


import javax.servlet.http.HttpServletRequest;

public class LoginService {
	private MemberDao memberDao;
	public void setLoginService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	public AutoInfo infochk(HttpServletRequest req) {
		String id = req.getParameter("mem_userid");
		String pw = req.getParameter("mem_password");
		
		AutoInfo autoinfo = memberDao.InfoChk(id, pw);
		if(autoinfo == null) {
			//해당 id 없음
			throw new WrongIDPWException();
		}else if(!autoinfo.matchPassword(pw)) {
			//비밀번호 틀림
			throw new WrongIDPWException();
		}
		return new AutoInfo(autoinfo.getMem_id(), autoinfo.getMem_userid(), autoinfo.getMem_password(), autoinfo.getMem_username());
	}
}
