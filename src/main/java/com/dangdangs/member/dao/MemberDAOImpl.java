package com.dangdangs.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dangdangs.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public void insertMember(MemberVO memberVO) {
		ss.insert("member.dao.MemberDAO.insertMember", memberVO);
	}

	@Override
	public MemberVO checkId(String id) {
		return ss.selectOne("member.dao.MemberDAO.checkId", id);
	}

	@Override
	public MemberVO checkNick(String nick) {
		return ss.selectOne("member.dao.MemberDAO.checkNick", nick);
	}

	@Override
	public MemberVO login(MemberVO memberVO) {
		return ss.selectOne("member.dao.MemberDAO.login", memberVO);
	}

	@Override
	public void updateMember(MemberVO memberVO) {
		ss.update("member.dao.MemberDAO.updateMember", memberVO);
	}
	
	
}
