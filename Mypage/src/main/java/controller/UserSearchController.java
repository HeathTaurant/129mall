package controller;


import java.io.IOException;
import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.IdFindDto;
import member.IdSearchService;
import net.sf.json.JSONObject;

//@ResponseBody를 적어야 map으롤 값을 받아올 수 있음
@Controller
public class UserSearchController {
	
	private IdSearchService idSearchService;
	
	public void setIdSearchService(IdSearchService idSearchService) {
		this.idSearchService = idSearchService;
	}
	//ajax에서 data 받는 방법 2가지
	//1. Vo를 이용
	//2. Map이용 난 map써볼게
	@ResponseBody
	@RequestMapping("/user/userIdSearch")
	public HashMap<String, String> userIdSearch(@RequestBody IdFindDto idFindDto) throws IOException {
		System.out.println(idFindDto.getMem_username());
		String mem_userid = idSearchService.idSearch(idFindDto);
		System.out.println(mem_userid);
//		JSONObject jso = new JSONObject();
//		jso.put("mem_userid", mem_userid);
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("mem_userid", mem_userid);
		return map;
	}
}
