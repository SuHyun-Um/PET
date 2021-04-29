package com.dangdangs.member.dao;

import com.dangdangs.member.vo.MemberVO;

public interface MemberDAO {

	public void insertMember(MemberVO memberVO);
	public MemberVO checkId(String id);
	public MemberVO checkNick(String nick);
	public MemberVO login(MemberVO memberVO);
	public void updateMember(MemberVO memberVO);
}
