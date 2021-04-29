package com.dangdangs.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dangdangs.board.service.BoardService;
import com.dangdangs.board.vo.BoardVO;
import com.dangdangs.comment.service.CommentService;
import com.dangdangs.comment.vo.CommentVO;
import com.dangdangs.diag.vo.DiagVO;
import com.dangdangs.member.vo.MemberVO;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	@Autowired
	private CommentService commentService;
	
	@GetMapping("/board")
	public String board(String query, Model model) {
		List<BoardVO> list = boardService.selectAllBoard(query);
		model.addAttribute("boardList", list);
		return "board/board";
	}
	
	@PostMapping("/board")
	public String board(BoardVO boardVO, DiagVO diagVO, MultipartFile uploadFile) {
		boardService.insertDiagParams(diagVO);
		boardService.insertBoard(boardVO, uploadFile);
		return "redirect:/board";
	}
	
	@RequestMapping("/board/{no}")
	public String detail(@PathVariable("no") int no, Model model) {
		BoardVO vo = boardService.selectResultBoard(no);
		List<CommentVO> list = commentService.selectByBnoComment(no);
		List<String> listSyname = boardService.selectSynameByBno(no);
		model.addAttribute("vo", vo);
		model.addAttribute("commentList", list);
		model.addAttribute("syname", listSyname);
		model.addAttribute("replaceChar", "\n");
		return "board/detail";
	}

	@RequestMapping("/board/spcode/{spcode}")
	public String myPetBoard(@PathVariable("spcode") String spcode, Model model) {
		List<BoardVO> list = boardService.selectBnoBySpcode(spcode);
		model.addAttribute("boardListBySp", list);
		return "board/listbysp";
	}
	
	@RequestMapping("/post")
	public ModelAndView post(HttpServletRequest req) {
		MemberVO sessionVO = (MemberVO)(req.getSession().getAttribute("loginVO"));
		ModelAndView mav;
		if (sessionVO == null || !sessionVO.getMid().equals("admin")) {
			mav = new ModelAndView("fail");
			mav.addObject("msg", "권한이 없습니다.");
		} else {
			mav = new ModelAndView("board/write");
			BoardVO boardVO = new BoardVO();
			mav.addObject("boardVO", boardVO);
		}
		mav = new ModelAndView("board/write");
		BoardVO boardVO = new BoardVO();
		mav.addObject("boardVO", boardVO);
		return mav;
	}
}