package com.cheng.ecrm.body.dto;

public class BingLiListDto {
	private Integer blType;
	private String blKeshi;
	private String blName;
	private Integer nianLing;
	private String ysName;
	public Integer getBlType() {
		return blType;
	}
	public void setBlType(Integer blType) {
		this.blType = blType;
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
	public String getYsName() {
		return ysName;
	}
	public void setYsName(String ysName) {
		this.ysName = ysName;
	}
	@Override
	public String toString() {
		return "BingLiListDto [blType=" + blType + ", blKeshi=" + blKeshi + ", blName=" + blName + ", nianLing="
				+ nianLing + ", ysName=" + ysName + "]";
	}
}
