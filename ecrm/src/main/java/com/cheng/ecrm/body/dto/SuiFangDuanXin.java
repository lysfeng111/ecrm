package com.cheng.ecrm.body.dto;

import java.util.Date;

public class SuiFangDuanXin {
	private String blCode;

    private Date sfStartDate;

    private Integer sfDianhuaState;

    private Integer sfType;
    
    private Integer sfId;

    private String blDianhua;

    private String dxBiaoti;

	private String dxNeirong;

	@Override
	public String toString() {
		return "SuiFangDuanXin [blCode=" + blCode + ", sfStartDate=" + sfStartDate + ", sfDianhuaState="
				+ sfDianhuaState + ", sfType=" + sfType + ", sfId=" + sfId + ", blDianhua=" + blDianhua + ", dxBiaoti="
				+ dxBiaoti + ", dxNeirong=" + dxNeirong + "]";
	}
	
	public String getBlCode() {
		return blCode;
	}

	public void setBlCode(String blCode) {
		this.blCode = blCode;
	}

	public Date getSfStartDate() {
		return sfStartDate;
	}

	public void setSfStartDate(Date sfStartDate) {
		this.sfStartDate = sfStartDate;
	}

	public Integer getSfDianhuaState() {
		return sfDianhuaState;
	}

	public void setSfDianhuaState(Integer sfDianhuaState) {
		this.sfDianhuaState = sfDianhuaState;
	}

	public Integer getSfType() {
		return sfType;
	}

	public void setSfType(Integer sfType) {
		this.sfType = sfType;
	}

	public Integer getSfId() {
		return sfId;
	}

	public void setSfId(Integer sfId) {
		this.sfId = sfId;
	}

	public String getBlDianhua() {
		return blDianhua;
	}

	public void setBlDianhua(String blDianhua) {
		this.blDianhua = blDianhua;
	}

	public String getDxBiaoti() {
		return dxBiaoti;
	}

	public void setDxBiaoti(String dxBiaoti) {
		this.dxBiaoti = dxBiaoti;
	}

	public String getDxNeirong() {
		return dxNeirong;
	}

	public void setDxNeirong(String dxNeirong) {
		this.dxNeirong = dxNeirong;
	}

}
