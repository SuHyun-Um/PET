package com.dangdangs.diag.service;

import java.util.List;

import com.dangdangs.board.vo.BoardVO;
import com.dangdangs.diag.vo.DiagVO;

public interface DiagService {

	public List<String> doDiag(DiagVO diagVO);
	public List<BoardVO> getBnoByDname(List<String> dnameList);
	public String makeURL(List<String> dnameList);
}
