package com.cheng.ecrm.service;

import java.util.List;
import java.util.Map;

import com.cheng.ecrm.body.dto.SuiFangKuDto;
import com.cheng.ecrm.entity.SuiFang;

public interface ISuiFangKuGuanLiService {
	public List<Map<String,Object>> suiFangList(SuiFangKuDto suiFangKuDto);
	
	public List<Map<String,Object>> suiFangListByMonth(String mon);

	public List<Map<String,Object>> getDuanXinSuiFangByBlCode(String blCode);
	
	public void xinZenDuanXinSuiFang(String blCode,String blDianHua,Integer sfType,String dxBiaoTi,String dxNeiRong);
	
	/********发送短信***********/
	public void sendMsg();
	
}
