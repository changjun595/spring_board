package com.exam.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.exam.member.MemberDTO;
import com.exam.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired private MemberService ms;
	
	@GetMapping("join")
	public void join() {}

	@PostMapping("join")
	public String join(Model model, MemberDTO member) {
				
				int result = ms.selectUserid(member);
				int rowNum = 0;
				
				if (result == 0) {
					rowNum = ms.joinMember(member);
					model.addAttribute("rowNum", rowNum);
					model.addAttribute("msg", "회원가입 성공!!");
					return "joinResult";
				}
				else {
					model.addAttribute("msg", "회원가입 실패!!");
					model.addAttribute("rowNum", rowNum);
					return "joinResult";
				}
				
					
						
		
	}
	@GetMapping("login")
	public void login() {}
	
	@PostMapping("login")
	public String login(Model model, HttpSession session, MemberDTO request) {
		
		MemberDTO login = ms.getMember(request);

		if (login != null) {
			model.addAttribute("msg", "님 안녕하세요!!");
			session.setAttribute("login", login);
			session.setMaxInactiveInterval(600);

			return "loginResult";
		}else {
			model.addAttribute("msg", "아이디와 비밀번호가 일치하지 않습니다!!");
			return "loginResult";
		}
	}
	
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
