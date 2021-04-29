package com.dangdangs.pet.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dangdangs.pet.vo.PetVO;

@Repository
public class PetDAOImpl implements PetDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public void insert(PetVO petVO) {
		ss.insert("pet.dao.PetDAO.insertPet", petVO);
	}

	@Override
	public String selectSpnameBySpcode(String spcode) {
		return ss.selectOne("pet.dao.PetDAO.selectSpnameBySpcode", spcode);
	}

	@Override
	public List<PetVO> selectDpetByMid(String mid) {
		return ss.selectList("pet.dao.PetDAO.selectDpetByMid", mid);
	}

	@Override
	public int delete(int pno) {
		
		return ss.delete("pet.dao.PetDAO.deleteDpetByPno", pno);
		
	}

}
