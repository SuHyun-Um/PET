package com.dangdangs.comment.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dangdangs.comment.vo.CommentVO;

@Repository
public class CommentDAOImpl implements CommentDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public void insert(CommentVO commentVO) {
		ss.insert("comment.dao.CommentDAO.insert", commentVO);
	}

	@Override
	public List<CommentVO> selectByBno(int bno) {
		return ss.selectList("comment.dao.CommentDAO.selectByBno", bno);
	}

	@Override
	public int updateCtypeByCno(int cno) {
		return ss.update("comment.dao.CommentDAO.updateCtypeByCno", cno);
	}

}
