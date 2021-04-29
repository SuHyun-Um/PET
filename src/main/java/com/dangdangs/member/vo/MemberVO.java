package com.dangdangs.member.vo;

import javax.validation.constraints.NotEmpty;

public class MemberVO {
	
	private int mno;
	@NotEmpty(message="필수항목입니다.")
	private String mid;
	@NotEmpty(message="필수항목입니다.")
	private String mnick;
	@NotEmpty(message="필수항목입니다.")
	private String mpassword;
	private String mtype;
	private String mdate;
	
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMnick() {
		return mnick;
	}
	public void setMnick(String mnick) {
		this.mnick = mnick;
	}
	public String getMpassword() {
		return mpassword;
	}
	public void setMpassword(String mpassword) {
		this.mpassword = mpassword;
	}
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	@Override
	public String toString() {
		return "MemberVO [mno=" + mno + ", mid=" + mid + ", mnick=" + mnick + ", mpassword=" + mpassword + ", mtype="
				+ mtype + ", mdate=" + mdate + "]";
	}
	
	
}
