package com.dangdangs.comment.service;

import java.util.List;

import com.dangdangs.comment.vo.CommentVO;

public interface CommentService {

	public void insertComment(CommentVO commentVO);
	public List<CommentVO> selectByBnoComment(int bno);
	public int updateCtypeByCnoComment(int cno);
}
