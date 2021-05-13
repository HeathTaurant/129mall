package myPage;

import member.Member;

public class MemberChangeService {
	
	private MemberChangeDao memberchangeDao;
	
	
	public void setMemberChangeService(MemberChangeDao memberChangeDao) {
		this.memberchangeDao = memberChangeDao;
	}
	
	public void MemberChange(Member member) {
		memberchangeDao.memberChange(member);
	
	}
	
	
	
	

}
