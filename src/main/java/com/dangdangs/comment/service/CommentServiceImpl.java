package com.dangdangs.comment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dangdangs.comment.dao.CommentDAO;
import com.dangdangs.comment.vo.CommentVO;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentDAO commentDAO;
	
	@Override
	public void insertComment(CommentVO commentVO) {
		commentDAO.insert(commentVO);
	}

	@Override
	public List<CommentVO> selectByBnoComment(int bno) {
		return commentDAO.selectByBno(bno);
	}

	@Override
	public int updateCtypeByCnoComment(int cno) {
		return commentDAO.updateCtypeByCno(cno);
	}

}
