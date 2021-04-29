package com.dangdangs.diag.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dangdangs.board.vo.BoardVO;
import com.dangdangs.diag.service.DiagService;
import com.dangdangs.diag.vo.DiagVO;

@Controller
public class DiagController {

	@Autowired
	private DiagService diagService;
	
	@GetMapping("/diag")
	public String diagForm() {
		return "diag/diag";
	}
	
	@PostMapping("/diag")
	public String diag(DiagVO diagVO, Model model) {
		List<String> dnameList = diagService.doDiag(diagVO);
		if (dnameList != null) {
			List<BoardVO> voList = diagService.getBnoByDname(dnameList);
			String url = diagService.makeURL(dnameList);
			System.out.println(voList);
			System.out.println("가장 유력한 질병: " + dnameList.get(0));
			model.addAttribute("dnameList", dnameList);
			model.addAttribute("voList", voList);
			model.addAttribute("url", url);
			model.addAttribute("replaceChar", "\n");
			return "diag/result";
		} else {
			model.addAttribute("msg", "증상이 뚜렷하지 않아 정확한 병명을 찾을 수 없습니다.");
			model.addAttribute("location", "diag");
			return "fail";
		}
		
	}
	
	@RequestMapping("/result")
	public ModelAndView result(@RequestParam("dname")List<String> dname) {
		ModelAndView mav = new ModelAndView("diag/result");
		List<BoardVO> voList = diagService.getBnoByDname(dname);
		mav.addObject("dnameList", dname);
		mav.addObject("voList", voList);
		mav.addObject("replaceChar", "\n");
		return mav;
	}
}
