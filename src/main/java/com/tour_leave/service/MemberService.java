package com.tour_leave.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tour_leave.mapper.MemberMapper;
import com.tour_leave.vo.LoginVO;
import com.tour_leave.vo.MemberVO;
import com.tour_leave.vo.SimpleMemberVO;

@Service
public class MemberService {
	@Autowired
	MemberMapper mapper;
	
	public boolean memberLogin(LoginVO vo) {
		return mapper.memberLogin(vo) == 1;
	}
	
	public SimpleMemberVO selectSimpleMemberInfo(LoginVO vo) {
		return mapper.selectSimpleMemberInfo(vo);
	}
	
	
	public void insertMemberInfo(MemberVO vo) {
		mapper.insertMemberInfo(vo);
	}
	
	
	public boolean userIdCheck(String id) {
		return !(mapper.selectUserCntById(id) > 0);
	}
	
	public boolean userEmailCheck(String email) {
		return !(mapper.selectUserCntByEmail(email) > 0);
	}
	
}
