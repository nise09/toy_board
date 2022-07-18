package com.tour_leave.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {

	@GetMapping("/member/login")
	public String getLogin() {
		return "/member/login";
	}
	@GetMapping("/member/join")
	public String getMemberJoin() {
		return "/member/join";
	}
}
