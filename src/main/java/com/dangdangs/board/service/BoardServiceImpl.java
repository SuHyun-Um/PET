package com.dangdangs.board.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dangdangs.board.dao.BoardDAO;
import com.dangdangs.board.vo.BoardVO;
import com.dangdangs.diag.dao.DiagDAO;
import com.dangdangs.diag.vo.DiagVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDAO;
	@Autowired
	private DiagDAO diagDAO;
	@Autowired
	private ServletContext servletContext;

	public List<BoardVO> selectAllBoard(String query) {
		return boardDAO.selectAll(query);
	}

	@Override
	public BoardVO selectResultBoard(int bno) {
		return boardDAO.selectResult(bno);
	}

	@Override
	public List<BoardVO> selectBnoBySpcode(String spcode) {
		return boardDAO.selectBnoBySpcode(spcode);
	}

	@Override
	public List<String> selectSynameByBno(int bno) {
		return boardDAO.selectSynameByBno(bno);
	}

	@Override
	public void insertBoard(BoardVO boardVO, MultipartFile mFile) {
		// 실행되는 웹 어플리케이션의 실제 경로
		String uploadDir = servletContext.getRealPath("upload/");
		String oriFileName = mFile.getOriginalFilename();

		// 파일 이름 처리
		if (oriFileName != null && !oriFileName.equals("")) {
			// 확장자 처리
			String ext = "";
			// 뒤쪽에 있는 . 의 위치
			int index = oriFileName.lastIndexOf(".");
			if (index != -1) {
				// 파일명에서 확장자명(.포함)을 추출
				ext = oriFileName.substring(index);
			}

			// 고유한 파일명 만들기
			String saveFileName = UUID.randomUUID().toString() + ext;

			// 임시저장된 파일을 원하는 경로에 저장
			try {
				mFile.transferTo(new File(uploadDir + saveFileName));
				boardVO.setBfname(saveFileName);
				boardDAO.insert(boardVO);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void insertDiagParams(DiagVO diagVO) {
		diagDAO.insertDisease(diagVO);
		System.out.println("질병 목록 갱신 완료");
		
		List<String> synameList = diagVO.getSyname();
		for(String syname: synameList) {
			diagVO.setTempSyname(syname);
			diagDAO.insertSymptom(diagVO);
		}
		System.out.println("증상 목록 갱신 완료");
		
		List<String> spcodeList = diagVO.getSpcodeList();
		for(String spcode: spcodeList) {
			if (!spcode.equals("etc")) {
				diagVO.setSpcode(spcode);
				diagDAO.insertWeaken(diagVO);
			}
		}
		System.out.println("취약 견종 목록 갱신 완료");
	}

}

