package member;

import java.time.LocalDateTime;
import javax.servlet.http.HttpServletRequest;



public class JoinService {
	//-----join insert--------//
	private MemberDao memberDao;
	
	public JoinService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	public int regist(MemberRequest req, HttpServletRequest request) {
		/*
		 * 커멘드 객체랑 형식 안맞는 파라미터
		 * mem_phone	num1, member_num2, member_num3
		 * mem_birthday memberBirth_year, memberBirth_month, memberBirth_day
		 * mem_register_datetime 
		*/
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("mem_num2");
		String num3 = request.getParameter("mem_num3");
		String year = request.getParameter("birth_year");
		String month = request.getParameter("birth_month");
		String day = request.getParameter("birth_day");
		if(day.length() != 2) {
			day = "0"+day;
		}
		if(month.length() != 2) {
			month = "0"+month;
		}

		String mem_phone = num1+"-"+num2+"-"+num3;
		LocalDateTime mem_birthday = LocalDateTime.parse(year+"-"+month+"-"+day+"T00:00:00"); //파싱 String을 날짜형식으로 변환
		LocalDateTime mem_register_datetime = LocalDateTime.now();
		
		Member member = new Member(
			req.getMem_userid(),req.getMem_email(), req.getMem_password(), req.getMem_username(),
			mem_phone, mem_birthday,req.getMem_sex(), req.getMem_postcode(), 
			req.getMem_address1(), req.getMem_address2(), mem_register_datetime);
		memberDao.MemberInset(member);
		return member.getMem_id(); // memberinsert 메서드에서member.setMem_id(keyValue.intValue())해줌.
	}
	
}
