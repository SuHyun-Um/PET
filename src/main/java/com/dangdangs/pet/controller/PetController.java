package com.dangdangs.pet.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dangdangs.pet.service.PetService;
import com.dangdangs.pet.vo.PetVO;

@Controller
public class PetController {

	@Autowired
	private PetService service;
	
	
	
	@GetMapping("/pet")
	public String petForm(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		// 로그인 되었을 때
		if (session.getAttribute("loginVO") != null) {
			return "member/pet";
		}
		else {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			return "fail";
		}
	}
	
	@PostMapping("/pet")
	public String petForm(PetVO petVO) {
		service.insertPet(petVO);
		return "redirect:/mypage";
	}

	@ResponseBody
	@DeleteMapping("/pet/{no}")
	public int deletePet(@PathVariable("no") int pno)
	{
		return service.deletePet(pno);
	}
	
	}
