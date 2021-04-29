package com.dangdangs.pet.vo;

public class PetVO {

	private int pno;
	private String mid, spcode, pname, spname;
	
	public String getSpname() {
		return spname;
	}
	public void setSpname(String spname) {
		this.spname = spname;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getSpcode() {
		return spcode;
	}
	public void setSpcode(String spcode) {
		this.spcode = spcode;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	@Override
	public String toString() {
		return "PetVO [pno=" + pno + ", mid=" + mid + ", spcode=" + spcode + ", pname=" + pname + ", spname=" + spname
				+ "]";
	}
	
	
}
