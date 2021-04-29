package com.dangdangs.diag.dao;

import java.util.List;

import com.dangdangs.diag.vo.DiagVO;

public interface DiagDAO {

	public List<String> selectDnameBySyname(String syname);
	public List<String> selectDnameBySpcode(String spcode);
	public List<String> selectDnameByDAge(int dage);
	public void insertDisease(DiagVO diagVO);
	public void insertSymptom(DiagVO diagVO);
	public void insertWeaken(DiagVO diagVO);
}
