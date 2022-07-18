package com.tour_leave.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.tour_leave.vo.LoginVO;
import com.tour_leave.vo.MemberVO;
import com.tour_leave.vo.SimpleMemberVO;

@Mapper
public interface MemberMapper {
	public Integer memberLogin(LoginVO vo);
	
	public SimpleMemberVO selectSimpleMemberInfo(LoginVO vo);
	
	public void insertMemberInfo(MemberVO vo);
	public Integer selectUserCntById(String id);
	public Integer selectUserCntByEmail(String email);
	
	
}
