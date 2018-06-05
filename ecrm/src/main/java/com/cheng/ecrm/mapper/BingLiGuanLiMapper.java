package com.cheng.ecrm.mapper;

import java.util.List;

import com.cheng.ecrm.body.dto.BingLiListDto;
import com.cheng.ecrm.entity.BingLiGuanLi;

public interface BingLiGuanLiMapper {
	public List<BingLiGuanLi> bingLiList(BingLiListDto blListDto);
	
	public BingLiGuanLi getBingLiByBlCode(String blCode);
	
	public String getXinZenBingLi();

	public String getBlNameByBlCode(String blCode);
}
