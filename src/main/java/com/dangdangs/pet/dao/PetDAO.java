package com.dangdangs.pet.dao;

import java.util.List;

import com.dangdangs.pet.vo.PetVO;

public interface PetDAO {
	public void insert(PetVO petVO);
	public String selectSpnameBySpcode(String spcode);
	public List<PetVO> selectDpetByMid(String mid);
	public int delete(int pno);
}
