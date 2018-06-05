package com.cheng.ecrm.service;

import java.util.List;

import com.cheng.ecrm.body.dto.BingLiListDto;
import com.cheng.ecrm.entity.BingLi;
import com.cheng.ecrm.entity.BingLiGuanLi;

/**
 * 病例管理首页
 * @author Administrator
 *
 */
public interface IBingLiGuanLiService {
	public List<BingLiGuanLi> bingLiList(BingLiListDto blListDto);
	
	public BingLiGuanLi getBingLiByBlCode(String blCode);
	
	public String getXinZenBlCode();
}
