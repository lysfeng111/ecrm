package com.cheng.ecrm.service;

import com.cheng.ecrm.entity.BingLi;

public interface IBingLiService {
	
	public void updateByPrimaryKeySelective(BingLi bingLi);
	
	public void xinZenBingLi(BingLi bingLi);
}
