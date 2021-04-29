package com.dangdangs.comment.dao;

import java.util.List;

import com.dangdangs.comment.vo.CommentVO;

public interface CommentDAO {

	public void insert(CommentVO commentVO);
	public List<CommentVO> selectByBno(int bno);
	public int updateCtypeByCno(int cno);
}
