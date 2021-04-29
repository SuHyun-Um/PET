package com.dangdangs.login.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.dangdangs.member.service.MemberService;
import com.dangdangs.member.vo.MemberVO;

@SessionAttributes({"loginVO"})
@Controller
public class LoginController {
	
	@Autowired
	private MemberService service;

	@GetMapping("/login")
	public String loginForm(HttpServletRequest req, Model model) {
		if(req.getParameter("no") != null) {
			model.addAttribute("no", req.getParameter("no"));
		}
		return "member/login";
	}
	
	@PostMapping("/login")
	public String login(MemberVO memberVO, String no, Model model) {
		MemberVO member = service.loginMember(memberVO);
		if (no == null) {
			if (member == null) {
				// 로그인 실패
				model.addAttribute("msg", "아이디 또는 패스워드가 잘못되었습니다.");
				return "redirect:/login";
			} else {
				// 로그인 성공
				model.addAttribute("loginVO", member);
				return "redirect:/";
			}
		} else {
			if (member == null) {
				// 로그인 실패
				model.addAttribute("msg", "아이디 또는 패스워드가 잘못되었습니다.");
				return "redirect:/login";
			} else {
				// 로그인 성공
				model.addAttribute("loginVO", member);
				return "redirect:/board/" + no;
			}
		}
		
	}
	
	@GetMapping("/logout")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "redirect:/";
	}
}
