package com.dangdangs.board.dao;

import java.util.List;

import com.dangdangs.board.vo.BoardVO;

public interface BoardDAO {

	public List<BoardVO> selectAll(String query); 
	public BoardVO selectResult(int bno);
	public BoardVO selectBnoByDname(String dname);
	public List<BoardVO> selectBnoBySpcode(String spcode);
	public List<String> selectSynameByBno(int bno);
	public void insert(BoardVO boardVO);
}
