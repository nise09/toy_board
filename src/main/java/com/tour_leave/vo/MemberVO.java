package com.tour_leave.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {

	private Integer tlm_seq;
	private String tlm_id;
	private String tlm_name;
	private String tlm_pwd;
	private String tlm_email;
	private Date tlm_birth;
	private Integer tlm_terms;
	
	private Integer tlm_grade;
	private Integer tlm_type;
	
	
}
