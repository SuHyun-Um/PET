package com.dangdangs.diag.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dangdangs.diag.vo.DiagVO;

@Repository
public class DiagDAOImpl implements DiagDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public List<String> selectDnameBySyname(String syname) {
		return ss.selectList("diag.dao.DiagDAO.selectDnameBySyname", syname);
	}

	@Override
	public List<String> selectDnameBySpcode(String spcode) {
		return ss.selectList("diag.dao.DiagDAO.selectDnameBySpcode", spcode);
	}

	@Override
	public List<String> selectDnameByDAge(int dage) {
		return ss.selectList("diag.dao.DiagDAO.selectDnameByAge", dage);
	}

	@Override
	public void insertDisease(DiagVO diagVO) {
		ss.insert("diag.dao.DiagDAO.insertDisease", diagVO);
	}

	@Override
	public void insertSymptom(DiagVO diagVO) {
		ss.insert("diag.dao.DiagDAO.insertSymptom", diagVO);
	}

	@Override
	public void insertWeaken(DiagVO diagVO) {
		ss.insert("diag.dao.DiagDAO.insertWeaken", diagVO);
	}

}
