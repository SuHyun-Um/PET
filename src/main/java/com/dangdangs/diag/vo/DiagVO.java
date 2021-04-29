package com.dangdangs.diag.vo;

import java.util.List;

public class DiagVO {

	private int dage;
	private String dname, spcode;
	private List<String> syname;
	private List<String> spcodeList;
	private String tempSyname;
	
	public int getDage() {
		return dage;
	}
	public void setDage(int dage) {
		this.dage = dage;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getSpcode() {
		return spcode;
	}
	public void setSpcode(String spcode) {
		this.spcode = spcode;
	}
	public List<String> getSyname() {
		return syname;
	}
	public void setSyname(List<String> syname) {
		this.syname = syname;
	}
	public List<String> getSpcodeList() {
		return spcodeList;
	}
	public void setSpcodeList(List<String> spcodeList) {
		this.spcodeList = spcodeList;
	}
	public String getTempSyname() {
		return tempSyname;
	}
	public void setTempSyname(String tempSyname) {
		this.tempSyname = tempSyname;
	}
	@Override
	public String toString() {
		return "DiagVO [dage=" + dage + ", dname=" + dname + ", spcode=" + spcode + ", syname=" + syname
				+ ", spcodeList=" + spcodeList + ", tempSyname=" + tempSyname + "]";
	}
	
}
