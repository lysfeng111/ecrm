package com.cheng.ecrm.body.dto;

public class SuiFangKuDto {
	private Integer suiFangState;
	private Integer suiFangType;
	private String blKeshi;
	private String blName;
	private Integer nianLing;
	public Integer getSuiFangState() {
		return suiFangState;
	}
	public void setSuiFangState(Integer suiFangState) {
		this.suiFangState = suiFangState;
	}
	public Integer getSuiFangType() {
		return suiFangType;
	}
	public void setSuiFangType(Integer suiFangType) {
		this.suiFangType = suiFangType;
	}
	public String getBlKeshi() {
		return blKeshi;
	}
	public void setBlKeshi(String blKeshi) {
		this.blKeshi = blKeshi;
	}
	public String getBlName() {
		return blName;
	}
	public void setBlName(String blName) {
		this.blName = blName;
	}
	public Integer getNianLing() {
		return nianLing;
	}
	public void setNianLing(Integer nianLing) {
		this.nianLing = nianLing;
	}
	@Override
	public String toString() {
		return "SuiFangKuDto [suiFangState=" + suiFangState + ", suiFangType=" + suiFangType + ", blKeshi=" + blKeshi
				+ ", blName=" + blName + ", nianLing=" + nianLing + "]";
	}
	
}
