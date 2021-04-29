package com.dangdangs.member.service;

import com.dangdangs.member.vo.MemberVO;

public interface MemberService {

	public void signUp(MemberVO memberVO);
	public MemberVO checkValid(int index, String query);
	public MemberVO loginMember(MemberVO memberVO);
	public void updateMember(MemberVO memberVO);
}
