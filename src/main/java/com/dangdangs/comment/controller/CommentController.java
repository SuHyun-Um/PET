package com.dangdangs.comment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dangdangs.comment.service.CommentService;
import com.dangdangs.comment.vo.CommentVO;

@Controller
public class CommentController {

	@Autowired
	private CommentService commentService;
	
	@PostMapping("/comment/{no}")
	public String comment(@PathVariable("no") int no, CommentVO commentVO) {
		commentService.insertComment(commentVO);
		return "redirect:/board/" + no;
	}
	
	@ResponseBody
	@PutMapping("/comment/{no}")
	public int comment(@PathVariable("no") int no) {
		return commentService.updateCtypeByCnoComment(no);
	}
	
}
