package com.cheng.ecrm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.cheng.ecrm.mapper.YiShengMapper;
import com.cheng.ecrm.mapper.YiShengMsgMapper;
import com.cheng.ecrm.service.IYiShengService;
@Service("yiShengService")
public class YiShengImpl implements IYiShengService {
	@Autowired
	private YiShengMapper yiShengMapper;
	@Autowired
	private YiShengMsgMapper yiShengMsgMapper;

	@Override
	public String getNameFromCode(String code) {
		if(StringUtils.isEmpty(code)){
			return null;
		}
		return yiShengMsgMapper	.getNameFromCode(code);
	}

	@Override
	public String getCodeByName(String name) {
		if(StringUtils.isEmpty(name)){
			return "";
		}
		return yiShengMsgMapper.getCodeByName(name);
	}
	
	
}
