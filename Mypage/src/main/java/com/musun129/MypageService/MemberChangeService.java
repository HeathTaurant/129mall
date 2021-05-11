package com.musun129.MypageService;





import com.musun129.MypageDao.MemberChangeDao;

import member.Member;

public class MemberChangeService {
	
	private MemberChangeDao memberchangeDao;
	
	
	public void setMemberChangeService(MemberChangeDao memberChangeDao) {
		this.memberchangeDao = memberChangeDao;
	}
	
	public void MemberChange(Member member) {
		memberchangeDao.MemberChange(member);
	
	}
	
	
	
	

}
