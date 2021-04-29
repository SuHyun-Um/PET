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
		// ����Ǵ� �� ���ø����̼��� ���� ���
		String uploadDir = servletContext.getRealPath("upload/");
		String oriFileName = mFile.getOriginalFilename();

		// ���� �̸� ó��
		if (oriFileName != null && !oriFileName.equals("")) {
			// Ȯ���� ó��
			String ext = "";
			// ���ʿ� �ִ� . �� ��ġ
			int index = oriFileName.lastIndexOf(".");
			if (index != -1) {
				// ���ϸ��� Ȯ���ڸ�(.����)�� ����
				ext = oriFileName.substring(index);
			}

			// ������ ���ϸ� �����
			String saveFileName = UUID.randomUUID().toString() + ext;

			// �ӽ������ ������ ���ϴ� ��ο� ����
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
		System.out.println("���� ��� ���� �Ϸ�");
		
		List<String> synameList = diagVO.getSyname();
		for(String syname: synameList) {
			diagVO.setTempSyname(syname);
			diagDAO.insertSymptom(diagVO);
		}
		System.out.println("���� ��� ���� �Ϸ�");
		
		List<String> spcodeList = diagVO.getSpcodeList();
		for(String spcode: spcodeList) {
			if (!spcode.equals("etc")) {
				diagVO.setSpcode(spcode);
				diagDAO.insertWeaken(diagVO);
			}
		}
		System.out.println("��� ���� ��� ���� �Ϸ�");
	}

}

