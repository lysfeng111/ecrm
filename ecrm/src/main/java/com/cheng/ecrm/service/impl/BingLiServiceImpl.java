package com.cheng.ecrm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cheng.ecrm.entity.BingLi;
import com.cheng.ecrm.mapper.BingLiMapper;
import com.cheng.ecrm.service.IBingLiService;
@Service("bingLiService")
public class BingLiServiceImpl implements IBingLiService {

	@Autowired
	private BingLiMapper bingLiMapper;

	@Override
	public void updateByPrimaryKeySelective(BingLi bingLi) {
		bingLiMapper.updateByPrimaryKeySelective(bingLi);
	}

	@Override
	public void xinZenBingLi(BingLi bingLi) {
		bingLiMapper.insertSelective(bingLi);
	}
	


}
