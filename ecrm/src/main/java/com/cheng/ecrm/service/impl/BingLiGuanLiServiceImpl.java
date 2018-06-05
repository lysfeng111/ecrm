package com.cheng.ecrm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.cheng.ecrm.body.dto.BingLiListDto;
import com.cheng.ecrm.entity.BingLiGuanLi;
import com.cheng.ecrm.mapper.BingLiGuanLiMapper;
import com.cheng.ecrm.service.IBingLiGuanLiService;

@Service("bingLiGuanLiService")
public class BingLiGuanLiServiceImpl implements IBingLiGuanLiService {
	
	@Autowired
	private BingLiGuanLiMapper blglMapper;
	
	@Override
	public List<BingLiGuanLi> bingLiList(BingLiListDto blListDto) {
		
		return blglMapper.bingLiList(blListDto);
	}

	@Override
	public BingLiGuanLi getBingLiByBlCode(String blCode) {
		if(StringUtils.isEmpty(blCode)){
			return null;
		}
		return blglMapper.getBingLiByBlCode(blCode);
	}

	@Override
	public String getXinZenBlCode() {
		String blCode = blglMapper.getXinZenBingLi();
		if(blCode != null){
			Integer blCodeInt = Integer.parseInt(blCode)+1;	
			return blCodeInt.toString();
		}
		return "10001";
		
	}

	
}
