package com.dangdangs.board.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.dangdangs.board.vo.BoardVO;
import com.dangdangs.diag.vo.DiagVO;

public interface BoardService {

	public List<BoardVO> selectAllBoard(String query);
	public BoardVO selectResultBoard(int bno);
	public List<BoardVO> selectBnoBySpcode(String spcode);
	public List<String> selectSynameByBno(int bno);
	public void insertBoard(BoardVO boardVO, MultipartFile mFile);
	public void insertDiagParams(DiagVO diagVO);
}


