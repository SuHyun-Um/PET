package com.dangdangs.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dangdangs.member.dao.MemberDAO;
import com.dangdangs.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public void signUp(MemberVO memberVO) {
		memberDAO.insertMember(memberVO);
	}

	@Override
	public MemberVO checkValid(int index, String query) {
		if (index == 0) return memberDAO.checkId(query);
		else return memberDAO.checkNick(query);
	}

	@Override
	public MemberVO loginMember(MemberVO memberVO) {
		return memberDAO.login(memberVO);
	}

	@Override
	public void updateMember(MemberVO memberVO) {
		memberDAO.updateMember(memberVO);
	}

	
}
