package member;

public class MemberIdCheckService {
	private MemberDao memberDao;
	public MemberIdCheckService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	public boolean ChkId(String id) {
		String mem_userid = memberDao.ChkId(id);
		
		boolean x = false; 
		if(mem_userid.equals(id)) {
			x = true; // 해당아이디 있음
		}

		return x;
	}
}
