package com.tour_leave.api;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.tour_leave.service.MemberService;
import com.tour_leave.vo.LoginVO;
import com.tour_leave.vo.MemberVO;

@RestController
public class MemberAPIController {
	@Autowired
	MemberService service;
	
	@PostMapping("/member/login")
	
	public Map<String, String > postLogin (@RequestBody LoginVO vo, HttpServletResponse response, HttpSession session) {
		
		Map<String, String> resultMap = new LinkedHashMap<String, String>();
		
		if (vo.getId() == null || vo.getPwd() == null) {
			response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
			resultMap.put("message", "aaaaa");
			
			return resultMap;
		}
		
		if(service.memberLogin(vo)) {
			response.setStatus(HttpServletResponse.SC_ACCEPTED);
			resultMap.put("message"," bbbb");
		}
		else {
			response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
			resultMap.put("message", "아이디나 비밀번호가 다릅니다.");
		}
		
		return resultMap;
	}
	
	@PostMapping("/member/join")
	public Map<String, String> postMemberJoin(@RequestBody MemberVO vo) {
		Map<String, String> resultMap = new LinkedHashMap<String, String>();
		
		service.insertMemberInfo(vo);
		
		resultMap.put("status", "success");
		resultMap.put("message","가입 되었습니다.");
		
		return resultMap;
		
	}
	
	@GetMapping("/member/id_check")
	public Map<String, String> getMemberIdCheck(@RequestParam String id) {
		Map<String, String> resultMap = new LinkedHashMap<String,String>();
		
		if(service.userIdCheck(id)) {
			resultMap.put("status", "OK");
			resultMap.put("message","확인 되었습니다");
		}
		else {
			resultMap.put("status", "failed");
			resultMap.put("message","중복된 아이디입니다.");

		}
		
		return resultMap;
	}
	
	@GetMapping("/member/email_check")
	public Map<String, String> getMemberEmailCheck(@RequestParam String email) {
		Map<String, String> resultMap = new LinkedHashMap<String,String>();
		
		if(service.userEmailCheck(email)) {
			resultMap.put("status", "OK");
			resultMap.put("message","확인 되었습니다.");
		}
		else {
			resultMap.put("status", "failed");
			resultMap.put("message","중복된 이메일입니다.");

		}
		
		return resultMap;
	}
}
