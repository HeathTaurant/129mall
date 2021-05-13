package member;

import org.springframework.dao.EmptyResultDataAccessException;

public class IdSearchService {
	private MemberDao memberDao;
	
	public IdSearchService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	public String idSearch(IdFindDto idFindDto) {
		String mem_phone = idFindDto.getMem_num1()+"-"+idFindDto.getMem_num2()+"-"+idFindDto.getMem_num3();
		String mem_username= idFindDto.getMem_username();
		String mem_userid="";
		try {
		mem_userid = memberDao.IdSearch(mem_username, mem_phone);
		return mem_userid ;
		}catch(EmptyResultDataAccessException e) {
			return "0";
		}
	}
	
}
