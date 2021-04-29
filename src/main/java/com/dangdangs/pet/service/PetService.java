package com.dangdangs.pet.service;

import java.util.List;

import com.dangdangs.pet.vo.PetVO;

public interface PetService {
	
	public void insertPet(PetVO petVO);
	public List<PetVO> selectPet(String mid);
	public int deletePet(int pno);
}
