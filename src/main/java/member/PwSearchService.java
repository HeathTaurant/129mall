package member;

//DB에서 id와 email값이 포함된 행이 있는 지확인
public class PwSearchService{
	private MemberDao memberDao;
	
	public PwSearchService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	public String serchIdEmail(String id, String email) {
		boolean x = memberDao.SerchIdEmail(id, email);
		if(x == true) {
			//이메일 전송 서비스
			return "이메일로 임시 비밀번호를 전송하였습니다.";
		}else {
			return "해당 아이디, 이메일에 해당하는 회원이 없습니다.";
		}
	}
	
	public void setPw(String id,String pw) {
		memberDao.setPw(id, pw);
	}
}
