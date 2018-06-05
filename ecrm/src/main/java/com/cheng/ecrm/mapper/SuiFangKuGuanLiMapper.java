package com.cheng.ecrm.mapper;

import java.util.List;
import java.util.Map;

import com.cheng.ecrm.body.dto.SuiFangDuanXin;
import com.cheng.ecrm.body.dto.SuiFangKuDto;

public interface SuiFangKuGuanLiMapper {
	public List<Map<String,Object>> suiFangList(SuiFangKuDto suiFangKuDto);
	
	public List<Map<String,Object>> suiFangListByMonth(String mon);
	
	public List<Map<String,Object>> getDuanXinSuiFangByBlCode(String blCode);
	
	public List<SuiFangDuanXin> getSuiFangDuanXinToSend();
	
	public Integer getMaxSfId();
}
