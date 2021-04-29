package com.dangdangs.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import org.springframework.web.servlet.ModelAndView;

import com.dangdangs.member.service.MemberService;
import com.dangdangs.member.vo.MemberVO;
import com.dangdangs.pet.service.PetService;
import com.dangdangs.pet.vo.PetVO;

@SessionAttributes({"loginVO"})
@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	@Autowired PetService petService;
	
	@GetMapping("/signup")
	public ModelAndView signupForm() {
		MemberVO memberVO = new MemberVO();
		ModelAndView mav = new ModelAndView("member/signup");
		mav.addObject("memberVO", memberVO);
		return mav;
	}
	
	@PostMapping("/signup")
	public String signup(@Valid MemberVO memberVO, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("회원가입중 에러 발생");
			return "member/signup";
		} else {
			service.signUp(memberVO);
			return "redirect:/";
		}
	}

	@ResponseBody
	@PostMapping("/signup/valid")
	public MemberVO validCheck(@RequestParam int index, @RequestParam String query) {
		return service.checkValid(index, query);
	}
	
	@RequestMapping("/mypage")
	public String mypage(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		
		// 로그인 되었을 때 mypet 정보도 함께 보내준다.
		if (session.getAttribute("loginVO") != null) {
			MemberVO membervo = (MemberVO) session.getAttribute("loginVO");
			List<PetVO> list = petService.selectPet(membervo.getMid());
			model.addAttribute("petList", list);
			return "member/mypage";
		}
		else {
			model.addAttribute("msg", "로그인 해주세요.");
			return "fail";
		}
	}
	
	// 내 정보 수정
	@GetMapping("/mypage/checkPwd")
	public String checkPasswordForm() {
		
		return "member/checkPassword";
	}
	
	@PostMapping("/mypage/check")
	public String checkPassword(MemberVO memberVO, Model model) {
		MemberVO member = service.loginMember(memberVO);
		System.out.println("work");
		if (member == null) {
			//실패
			model.addAttribute("msg", "패스워드가 잘못되었습니다.");
			return "redirect:/mypage/checkPwd";
		} else {
			//성공
			return "member/modifyMyInf";
		}
	}
	
	
	@PostMapping("/mypage/modifyMyInf")
	public String modifyMyInf(@Valid MemberVO memberVO, HttpServletRequest req, Model model) {
			service.updateMember(memberVO);
			HttpSession session = req.getSession();
			MemberVO vo = ((MemberVO) session.getAttribute("loginVO"));
			vo.setMnick(memberVO.getMnick());
			vo.setMpassword(memberVO.getMpassword());
			return "redirect:/";
	}
	
	
}
